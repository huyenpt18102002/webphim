@extends('layout')
@section('content')
<div class="row container" id="wrapper">
            <div class="halim-panel-filter">
               <div class="panel-heading">
                  <div class="row">
                     <div class="col-xs-6">
                        <div class="yoast_breadcrumb hidden-xs"><span><span><a href="{{route('category',[$movie->category->slug])}}">{{$movie->category->title}}</a> » <span><a href="{{route('country',[$movie->country->slug])}}">{{$movie->country->title}}</a> » <span class="breadcrumb_last" aria-current="page">{{$movie->title}}</span></span></span></span></div>
                     </div>
                  </div>
               </div>
               <div id="ajax-filter" class="panel-collapse collapse" aria-expanded="true" role="menu">
                  <div class="ajax"></div>
               </div>
            </div>
            <main id="main-contents" class="col-xs-12 col-sm-12 col-md-8">
               <section id="content" class="test">
                  <div class="clearfix wrap-content">
                    
                     <div class="halim-movie-wrapper">
                        <div class="title-block">
                           <div id="bookmark" class="bookmark-img-animation primary_ribbon" data-id="38424">
                              <div class="halim-pulse-ring"></div>
                           </div>
                           <div class="title-wrapper" style="font-weight: bold;">
                              Bookmark
                           </div>
                        </div>
                        <div class="movie_info col-xs-12">
                           <div class="movie-poster col-md-3">
                              <img class="movie-thumb" src="{{asset('uploads/movie/'.$movie->image)}}">
                              @if ($movie->resolution != 5)
                              @if ($episode_current_list_count>0)
                                 
                              <div class="bwa-content">
                                 <div class="loader"></div>
                                 <a href="{{url('xem-phim/'.$movie->slug.'/tap-'.$episode_tapdau->episode)}}" class="bwac-btn">
                                 <i class="fa fa-play"></i>
                                 </a>
                              </div>
                              @endif
                              @else
                              <a href="#watch_trailer" style="display: block;" class="btn btn-info watch_trailer">Xem Trailer</a>
                              @endif
                           </div>
                           <div class="film-poster col-md-9">
                              <h1 class="movie-title title-1" style="display:block;line-height:35px;margin-bottom: -14px;color: #ffed4d;text-transform: uppercase;font-size: 18px;">{{$movie->title}}</h1>
                              <h2 class="movie-title title-2" style="font-size: 12px;">{{$movie->name_eng}}</h2>
                              <ul class="list-info-group">
                                 <li class="list-info-group-item"><span>Trạng Thái</span> : 
                                    <span class="quality">
                                       @switch($movie->resolution)
                                       @case(0)
                                         HD
                                         @break
                                         @case(1)
                                         SD
                                         @break
                                         @case(2)
                                         HDCam
                                         @break
                                         @case(3)
                                         Cam
                                         @break
                                         @case(4)
                                         FullHD
                                         @break
                                       @default
                                         Trailer
                                     @endswitch
                                     @if ($movie->resolution != 5)
                                       </span><span class="episode">
                                          @if($movie->phude==0)
                                          Phụ đề
                                        @else
                                          Thuyết minh
                                        @endif
                                       </span></li>
                                       @endif
                                 
                                 <li class="list-info-group-item"><span>Thời lượng</span> : {{$movie->thoiluong}}</li>
                                 <li class="list-info-group-item"><span>Số tập</span> : 
                                    @if ($movie->thuocphim == 'phimbo')
                                    {{$episode_current_list_count}}/{{$movie->sotap}} 
                                    @if($episode_current_list_count == $movie->sotap)
                                    - Hoàn thành
                                    @else
                                    - Đang cập nhật
                                    @endif
                                    @else
                                    Phim lẻ
                                    @endif
                                 </li>
                                 @if ($movie->season != 0)
                                 <li class="list-info-group-item"><span>Season</span> : {{$movie->season}}</li>
                                    @endif
                                 <li class="list-info-group-item"><span>Thể loại</span> : 
                                    @foreach ($movie->movie_genre as $gen)
                                    <a href="{{route('genre',$gen->slug)}}" rel="category tag">{{$gen->title}}</a>
                                    @endforeach
                                   
                                 </li>
                                 <li class="list-info-group-item"><span>Danh mục</span> : 
                                    <a href="{{route('category',$movie->category->slug)}}" rel="category tag">{{$movie->category->title}}</a>
                                 </li>
                                 <li class="list-info-group-item"><span>Quốc gia</span> : 
                                    <a href="{{route('country',$movie->country->slug)}}" rel="tag">{{$movie->country->title}}</a>
                                 </li>
                                 <li class="list-info-group-item"><span>Tập phim mới nhất</span> : 
                                    @if ($episode_current_list_count>0)
                                    @if ($movie->thuocphim == 'phimbo')
                                  
                                    @foreach ($episode as $key => $ep)
                                    <a href="{{url('xem-phim/'.$ep->movie->slug.'/tap-'.$ep->episode)}}" rel="tag"> Tập {{$ep->episode}}</a> 
                                    @endforeach  
                                    @elseif(($movie->thuocphim == 'phimle'))
                                    @foreach ($episode as $key => $eple)
                                    <a href="{{url('xem-phim/'.$movie->slug.'/tap-'.$eple->episode)}}" rel="tag">{{$eple->episode}}</a> 
                                 
                                    @endforeach  
                                    @endif
                                    @else
                                      Đang cập nhật
                                    @endif  
                                 </li>
                              <li style="padding:10px">
                                 <ul class="list-inline rating"  title="Average Rating">

                                                  @for($count=1; $count<=5; $count++)

                                                    @php

                                                      if($count<=$rating){ 
                                                        $color = 'color:#ffcc00;'; //mau vang
                                                      }
                                                      else {
                                                        $color = 'color:#ccc;'; //mau xam
                                                      }
                                                    
                                                    @endphp
                                                  
                                                    <li title="star_rating" 

                                                    id="{{$movie->id}}-{{$count}}" 
                                                    
                                                    data-index="{{$count}}"  
                                                    data-movie_id="{{$movie->id}}" 

                                                    data-rating="{{$rating}}" 
                                                    class="rating" 
                                                    style="cursor:pointer; {{$color}} 

                                                    font-size:30px;">&#9733;</li>

                                                  @endfor
                                                </li>
                                 </ul>
                                 <span class=total_rating>Đánh giá: {{$rating}}/{{$count_total}} lượt</span>
                                 
                              </ul>
                              <div class="movie-trailer hidden">
                                
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="clearfix"></div>
                     <div id="halim_trailer"></div>
                     <div class="clearfix"></div>
                     <div class="section-bar clearfix">
                        <h2 class="section-title"><span style="color:#ffed4d">Nội dung phim</span></h2>
                     </div>
                     <div class="entry-content htmlwrap clearfix">
                        <div class="video-item halim-entry-box">
                           <article id="post-38424" class="item-content">
                              {{$movie->description}}
                           </article>
                        </div>
                     </div>
                     {{-- Tags phim --}}
                     <div class="section-bar clearfix">
                        <h2 class="section-title"><span style="color:#ffed4d">Tags phim</span></h2>
                     </div>
                     <div class="entry-content htmlwrap clearfix">
                        <div class="video-item halim-entry-box">
                           <article id="post-38424" class="item-content">
                              @if($movie->tags != null)
                              @php
                                 $tags = array();
                                 $tags = explode(',', $movie->tags);
                              @endphp
                              @foreach ($tags as $key=>$tag )
                                 <a href="{{url('tag/'.$tag)}}">{{$tag}}</a>
                              @endforeach
                              @else
                              {{$movie->title}}
                              @endif
                           </article>
                        </div>
                     </div>
                     
                      {{-- Comment phim --}}
                      <div class="section-bar clearfix">
                        <h2 class="section-title"><span style="color:#ffed4d">Bình luận</span></h2>
                     </div>
                     <div class="entry-content htmlwrap clearfix">
                        @php
                           $curent_url = Request::url();
                        @endphp
                        <div class="video-item halim-entry-box">
                           <article id="post-38424" class="item-content">
                              <div class="fb-comments" data-href="{{$curent_url}}"
                               data-width="100%" data-numposts="10"></div>
                           </article>
                        </div>
                     </div>
                        {{-- Trailer  phim --}}
                              <div class="section-bar clearfix">
                                 <h2 class="section-title"><span style="color:#ffed4d">Trailer phim</span></h2>
                              </div>
                              <div class="entry-content htmlwrap clearfix">
                                 <div class="video-item halim-entry-box">
                                    <article id="watch_trailer" class="item-content">
                                       <iframe width="100%" height="400" src="https://www.youtube.com/embed/{{$movie->trailer}}" 
                                       title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write;
                                        encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </article>
                                 </div>
                              </div>                              
                  </div>
               </section>
               <section class="related-movies">
                  <div id="halim_related_movies-2xx" class="wrap-slider">
                     <div class="section-bar clearfix">
                        <h3 class="section-title"><span>CÓ THỂ BẠN MUỐN XEM</span></h3>
                     </div>
                     <div id="halim_related_movies-2" class="owl-carousel owl-theme related-film">
                        @foreach($related as $key => $hot)
                        <article class="thumb grid-item post-38498">
                           <div class="halim-item">
                              <a class="halim-thumb" href="{{route('movie',$hot->slug)}}" title="{{$hot->title}}">
                                 <figure><img class="lazy img-responsive" src="{{asset('uploads/movie/'.$hot->image)}}" alt="{{$hot->title}}"></figure>
                                 <span class="status">
                                    @switch($hot->resolution)
                                    @case(0)
                                      HD
                                      @break
                                      @case(1)
                                      SD
                                      @break
                                      @case(2)
                                      HDCam
                                      @break
                                      @case(3)
                                      Cam
                                      @break
                                      @case(4)
                                      FullHD
                                      @break
                                    @default
                                      Trailer
                                  @endswitch
                                 </span><span class="episode"><i class="fa fa-play" aria-hidden="true"></i>
                                    @if($hot->phude==0)
                                    Phụ đề
                                  @else
                                    Thuyết minh
                                  @endif
                                 </span> 
                                 <div class="icon_overlay"></div>
                                 <div class="halim-post-title-box">
                                    <div class="halim-post-title ">
                                       <p class="entry-title">{{$hot->title}}</p>
                                       <p class="original_title">{{$hot->name_eng}}</p>
                                    </div>
                                 </div>
                              </a>
                           </div>
                        </article>
                        @endforeach
                       
                     </div>
                     <script>
                        $(document).ready(function($) {				
                        var owl = $('#halim_related_movies-2');
                        owl.owlCarousel({loop: true,margin: 4,autoplay: true,autoplayTimeout: 4000,autoplayHoverPause: true,nav: true,navText: ['<i class="hl-down-open rotate-left"></i>', '<i class="hl-down-open rotate-right"></i>'],responsiveClass: true,responsive: {0: {items:2},480: {items:3}, 600: {items:4},1000: {items: 4}}})});
                     </script>
                  </div>
               </section>
            </main>
             {{-- sidebar --}}
             @include('pages.include.sidebar')
         </div>
@endsection