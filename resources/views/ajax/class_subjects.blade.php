<div class="sk-table table-responsive">
    <table class="table table-bordered text-center">
        <tbody>
        @for ($i = 0; $i < ceil($subjects->count()/5); $i++)
            <tr>
                @foreach($subjects as $k=>$rows)
                    @if($i*5<=$k && $k<$i*5+5)
                        <td class="subject_title" data-id="{{$rows->id}}">{{$rows->title}}</td>
                    @endif
                @endforeach
            </tr>
        @endfor
        </tbody>
    </table>
</div>
