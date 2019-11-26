<div class="sk-table table-responsive">
    <table class="table table-bordered text-center">
        <tbody>
        @for ($i = 0; $i < ceil($material_type->count()/5); $i++)
            <tr>
                @foreach($material_type as $k=>$rows)
                    @if($i*5<=$k && $k<$i*5+5)
                        <td class="material_type_title" data-id="{{$rows->id}}">{{$rows->title}}</td>
                    @endif
                @endforeach
            </tr>
        @endfor
        </tbody>
    </table>
</div>