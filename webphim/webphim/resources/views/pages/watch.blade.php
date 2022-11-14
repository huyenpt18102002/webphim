@extends('layout')
@section('content')
<div class="row container" id="wrapper">
         <div class="halim-panel-filter">
            <div class="panel-heading">
               <div class="row">
                  <div class="col-xs-6">
                     <div class="yoast_breadcrumb hidden-xs"><span><span><a href="{{route('movie', [$movie->slug])}}">{{$movie->title}}</a> » 
                        <span><a href="{{route('country', [$movie->country->slug])}}">{{$movie->country->title}}</a> » 
                           <span class="breadcrumb_last" aria-current="page">{{$movie->title}} - Tập {{$episode->episode}}</span></span></span></span></div>
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
                  <style type="text/css">
                  .iframe_phim iframe{
                   width: 100%;
                  height: 500px;
                  }
                  </style>
                  <div class="iframe_phim">
                     {{-- iframe phim web voi server HYDRAX:
                        <p><iframe src="https://short.ink/" frameborder="0" allowfullscreen width="100%" height="350px" scrolling="0"></iframe></p>
                         phan : short.ink/...--}}
                    {!! $episode->linkphim !!}
                  </div>
                  
                  {{-- <div class="button-watch">
                     <ul class="halim-social-plugin col-xs-4 hidden-xs">
                        <li class="fb-like" data-href="" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></li>
                     </ul>
                     <ul class="col-xs-12 col-md-8">
                        <div id="autonext" class="btn-cs autonext">
                           <i class="icon-autonext-sm"></i>
                           <span><i class="hl-next"></i> Autonext: <span id="autonext-status">On</span></span>
                        </div>
                        <div id="explayer" class="hidden-xs"><i class="hl-resize-full"></i>
                           Expand 
                        </div>
                        <div id="toggle-light"><i class="hl-adjust"></i>
                           Light Off 
                        </div>
                        <div id="report" class="halim-switch"><i class="hl-attention"></i> Report</div>
                        <div class="luotxem"><i class="hl-eye"></i>
                           <span>1K</span> lượt xem 
                        </div>
                        <div class="luotxem">
                           <a class="visible-xs-inline" data-toggle="collapse" href="#moretool" aria-expanded="false" aria-controls="moretool"><i class="hl-forward"></i> Share</a>
                        </div>
                     </ul>
                  </div> --}}
                  {{-- <div class="collapse" id="moretool">
                     <ul class="nav nav-pills x-nav-justified">
                        <li class="fb-like" data-href="" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></li>
                        <div class="fb-save" data-uri="" data-size="small"></div>
                     </ul>
                  </div> --}}
               
                  <div class="clearfix"></div>
                  <div class="clearfix"></div>
                  <div class="title-block">
                     <a href="javascript:;" data-toggle="tooltip" title="Add to bookmark">
                        <div id="bookmark" class="bookmark-img-animation primary_ribbon" data-id="37976">
                           <div class="halim-pulse-ring"></div>
                        </div>
                     </a>
                     <div class="title-wrapper-xem full">
                        <h1 class="entry-title"><a href="" title="{{$movie->title}}" class="tl">Xem phim {{$movie->title}} - Tập {{$episode->episode}}</a></h1>
                     </div>
                  </div>
                  <div class="entry-content htmlwrap clearfix collapse" id="expand-post-content">
                     <article id="post-37976" class="item-content post-37976"></article>
                  </div>
                  <div class="clearfix"></div>
                  <div class="text-center">
                     <div id="halim-ajax-list-server"></div>
                  </div>
                  <div id="halim-list-server">
                     <ul class="nav nav-tabs" role="tablist">
                        
                        @switch($movie->resolution)
                        @case(0)
                           <li role="presentation" class="active server-1"><a href="#server-0" aria-controls="server-0" role="tab" 
                           data-toggle="tab"><i class="hl-server"></i> HD</a></li>
                          @break
                          @case(1)
                          <li role="presentation" class="active server-1"><a href="#server-0" aria-controls="server-0" role="tab" 
                           data-toggle="tab"><i class="hl-server"></i> SD </a></li>
                          @break
                          @case(2)
                           <li role="presentation" class="active server-1"><a href="#server-0" aria-controls="server-0" role="tab" 
                           data-toggle="tab"><i class="hl-server"></i> HDCam</a></li>
                          @break
                          @case(3)
                           <li role="presentation" class="active server-1"><a href="#server-0" aria-controls="server-0" role="tab" 
                           data-toggle="tab"><i class="hl-server"></i> Cam</a></li>
                          @break
                          @case(4)
                           <li role="presentation" class="active server-1"><a href="#server-0" aria-controls="server-0" role="tab" 
                           data-toggle="tab"><i class="hl-server"></i> FullHD</a></li>
                          @break
                        @default
                           <li role="presentation" class="active server-1"><a href="#server-0" aria-controls="server-0" role="tab" 
                           data-toggle="tab"><i class="hl-server"></i> Trailer</a></li>
                      @endswitch  
                      <li role="presentation" class="active server-1"><a href="#server-0" aria-controls="server-0" role="tab" 
                        data-toggle="tab"><i class="hl-server"></i> Vietsub</a></li>
                     </ul>
                     <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active server-1" id="server-0">
                           <div class="halim-server">
                              <ul class="halim-list-eps">
                                 @foreach ($movie->episode as $key => $sotap)
                                 <a href="{{url('xem-phim/'.$movie->slug.'/tap-'.$sotap->episode)}}"><li class="halim-episode">
                                    <span class="halim-btn halim-btn-2 {{$tapphim == $sotap->episode ? 'active': ''}} halim-info-1-1 box-shadow" data-post-id="37976" 
                                    data-server="1" data-episode="1" data-position="first" data-embed="0" 
                                    data-title="Xem phim {{$movie->title}} - Tập {{$sotap->episode}} - {{$movie->name_eng}} - Vietsub + Thuyết Minh" data-h1="{{$movie->title}} - tập {{$sotap->episode}}">{{$sotap->episode}}</span></li></a>
                                 @endforeach
                                 
                              </ul>
                              <div class="clearfix"></div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="clearfix"></div>
                  <div class="htmlwrap clearfix">
                     <div id="lightout"></div>
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
      </div>
@endsection