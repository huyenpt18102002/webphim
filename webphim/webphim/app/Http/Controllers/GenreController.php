<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Genre;
class GenreController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $list = Genre::all();
        return view('admincp.genre.index', compact('list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admincp.genre.form');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->validate(
            [
                'title' => 'required|unique:genres|max:255',
                'slug' => 'required|unique:genres|max:255',
                'description' => 'required|max:255',
                'status' => 'required',
            ],
            [
                'title.required' => 'Tên thể loại bắt buộc phải nhập.',
                'title.max' => 'Tên thể loại chỉ dài tối đa 255 kí tự.',
                'title.unique' => 'Tên thể loại đã tồn tại.',
                'slug.unique' => 'Slug thể loại đã tồn tại.',
                'description.required' => 'Mô tả thể loại bắt buộc phải nhập.',
                'description.max' => 'Mô tả thể loại chỉ dài tối đa 255 kí tự.',
            ]
        );
        $genre = new Genre();
        $genre->title = $data['title'];
        $genre->slug = $data['slug'];
        $genre->description = $data['description'];
        $genre->status = $data['status'];
        $genre->save();
        toastr()->success('Success', 'Thêm thể loại thành công.');
        return redirect()->route('genre.index');
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
        $genre = Genre::find($id);
        $list = Genre::all();
        return view('admincp.genre.form', compact('list','genre'));
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
        $data = $request->validate(
            [
                'title' => 'required|max:255',
                'slug' => 'required|max:255',
                'description' => 'required|max:255',
                'status' => 'required',
            ],
            [
                'title.required' => 'Tên thể loại bắt buộc phải nhập.',
                'title.max' => 'Tên thể loại chỉ dài tối đa 255 kí tự.',
                'description.required' => 'Mô tả thể loại bắt buộc phải nhập.',
                'description.max' => 'Mô tả thể loại chỉ dài tối đa 255 kí tự.',
            ]
        );
        $genre = Genre::find($id);
        $genre->title = $data['title'];
        $genre->slug = $data['slug'];
        $genre->description = $data['description'];
        $genre->status = $data['status'];
        $genre->save();
        toastr()->success('Success', 'Cập nhật thể loại thành công.');
        return redirect()->route('genre.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Genre::find($id)->delete();
        toastr()->info('Success', 'Xóa thể loại thành công.');
        return redirect()->back();
    }
}
