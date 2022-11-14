<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Movie;
use App\Models\Episode;
use Carbon\Carbon;

class EpisodeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $list_episode = Episode::with('movie')->orderBy('episode','DESC')->get();
        return view('admincp.episode.index', compact('list_episode'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $list_movie = Movie::orderBy('id','DESC')->pluck('title', 'id');
        return view('admincp.episode.form', compact('list_movie'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $data = $request->validate(
            [
                'movie_id' => 'required',
                'link' => 'required|unique:episodes,linkphim',
                'episode' => 'required|unique:episodes,episode',
            ],
            [
                'movie_id.required' => 'Phải chọn phim.',
                'link.required' => 'Link phim không được để trống.',
                'link.unique' => 'Link phim đã tồn tại.',
                'episode.required' => 'Tập phim không được để trống.',
                'episode.unique' => 'Tập phim đã tồn tại.',
            ]
        );
        $episode_check = Episode::where('episode', $data['episode'])->where('movie_id', $data['movie_id'])->count();
        if($episode_check>0){
            return redirect()->back();
        }else{
            $episode = new Episode();
            $episode->movie_id = $data['movie_id'];
            $episode->linkphim = $data['link'];
            $episode->episode = $data['episode'];
            $episode->created_at = Carbon::now('Asia/Ho_Chi_Minh');
            $episode->updated_at = Carbon::now('Asia/Ho_Chi_Minh');
            $episode->save();
        }
       
        return redirect()->back();
    }

    public function add_episode($id)
    {
        $list_episode = Episode::with('movie')->where('movie_id', $id)->orderBy('episode','DESC')->get();
        $movie = Movie::find($id);
        return view('admincp.episode.add_episode', compact('list_episode', 'movie'));
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $list_movie = Movie::orderBy('id','DESC')->pluck('title', 'id');
        $episode = Episode::find($id);
        return view('admincp.episode.form', compact('episode', 'list_movie'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $data = $request->validate(
            [
                'movie_id' => 'required',
                'link' => 'required',
                'episode' => 'required',
            ],
            [
                'movie_id.required' => 'Phải chọn phim.',
                'link.required' => 'Link phim không được để trống.',
                'episode.required' => 'Tập phim không được để trống.',
            ]
        );

        $episode = Episode::find($id);
        $episode->movie_id = $data['movie_id'];
        $episode->linkphim = $data['link'];
        $episode->episode = $data['episode'];
        $episode->created_at = Carbon::now('Asia/Ho_Chi_Minh');
        $episode->updated_at = Carbon::now('Asia/Ho_Chi_Minh');
        $episode->save();
        return redirect()->route('episode.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $episode = Episode::find($id)->delete();
        return redirect()->route('episode.index');
    }

    public function select_movie()
    {
        $id = $_GET['id'];
        $movie = Movie::find($id);
        $output = '<option>----Chọn tập phim-----</option>';
        if($movie->thuocphim == 'phimbo'){
            for($i = 1; $i <= $movie->sotap; $i++){
                $output.='<option value="'.$i.'">'.$i.'</option>';
            }
        }else{
            $output.='<option value="HD">HD</option>';
            $output.='<option value="FullHD">FullHD</option>';
            $output.='<option value="Cam">Cam</option>';
            $output.='<option value="HDCam">HDCam</option>';
        }
        echo $output;
    }
}
