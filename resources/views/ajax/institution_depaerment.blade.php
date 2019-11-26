<div class="sk-inst padding-both">
    @if($departments->count())
        @php $departments->prepend('Select Department','') @endphp
        {!! Form::select('department_id', $departments, old('department_id'),['class'=>'form-control department2','required'=>'required']) !!}
    @else
       No Department found.
    @endif
</div>

