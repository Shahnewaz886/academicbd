<div class="sk-table table-responsive">
    <table class="table table-bordered text-center">
        <tbody>
        @for ($i = 0; $i < ceil($contents->count()/5); $i++)
            <tr>
                @foreach($contents as $k=>$rows)
                    @if($i*5<=$k && $k<$i*5+5)
                        @if($rows->content_type_id==1)      {{--Presentation--}}
                            <td  data-id="{{$rows->id}}"><a href="{{ env('APP_URL_FILE').$rows->file_location }}">{{$rows->content_name}}</a></td>
                        @elseif($rows->content_type_id==2)   {{--youtube--}}
                            <td class="video" data-id="{{$rows->id}}">{{$rows->content_name}}</td>
                        @elseif($rows->content_type_id==3)  {{--pdf--}}
                            <td  data-id="{{$rows->id}}"><a target="_blank" href="{{ env('APP_URL_FILE').$rows->file_location }}">{{$rows->content_name}}</a></td>
                        @elseif($rows->content_type_id==4)    {{--Text--}}
                            <td class="subject_title" data-id="{{$rows->id}}"><a href="{{url('content-detail/'.$rows->id)}}">{{$rows->content_name}}</a></td>
                        @elseif($rows->content_type_id==5)  {{--doc/docx--}}
                            <td  data-id="{{$rows->id}}"><a  href="{{ env('APP_URL_FILE').$rows->file_location }}">{{$rows->content_name}}</a></td>
                        @endif
                    @endif
                @endforeach
            </tr>
        @endfor
        </tbody>
    </table>
</div>


