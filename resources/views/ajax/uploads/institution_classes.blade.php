<div class="form-group">
    <label>Class</label>
    @php $classes->prepend('Select Class','') @endphp
    {!! Form::select('class_id', $classes, old('class_id'),['class'=>'form-control','required'=>'required']) !!}
</div>
