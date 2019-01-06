@extends('layouts.app')
@section('title', ('文件上传'))

@section('content')
<form method="post" action="{{ route('tools.upload') }}" enctype="multipart/form-data">
  {{ csrf_field() }}
  <input name="token" type="hidden" value="<upload_token>">
  <input name="mytest" type="file" />
  <input type="submit" value="上传"/>
</form>



@endsection
