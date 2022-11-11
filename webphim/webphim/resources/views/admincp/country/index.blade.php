@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <a href="{{route('country.create')}}" class="btn btn-primary">Thêm Quốc Gia</a>
            <table class="table" id="tablephim">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Tên quốc gia</th>
                    <th scope="col">Mô tả</th>
                    <th scope="col">Đường dẫn</th>
                    <th scope="col">Trạng thái</th>
                    <th scope="col">Quản lý</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach($list as $key => $cate)
                  <tr>
                    <th scope="row">{{$key}}</th>
                    <td>{{$cate->title}}</td>
                    <td>{{$cate->description}}</td>
                    <td>{{$cate->slug}}</td>
                    <td>
                      @if($cate->status)
                          Hiển thị
                      @else
                          Không hiển thị
                      @endif
                    </td>
                    <td>
                        {!! Form::open(['method'=>'DELETE','route'=>['country.destroy',$cate->id],'onsubmit'=>'return confirm("Bạn có chắc muốn xóa?")']) !!}
                          {!! Form::submit('Xóa', ['class'=>'btn btn-danger']) !!}
                        {!! Form::close() !!}
                        <a href="{{route('country.edit',$cate->id)}}" class="btn btn-warning">Sửa</a>
                    </td>
                  </tr>
                  @endforeach
                </tbody>
              </table>
        </div>
    </div>
</div>
@endsection