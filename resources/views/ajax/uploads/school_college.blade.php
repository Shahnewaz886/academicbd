<div class="form-group">
    <label>Class</label>
    @php $classes->prepend('Select Class','') @endphp
    {!! Form::select('class_id', $classes, old('class_id'),['class'=>'form-control','required'=>'required']) !!}
</div>

<div class="subject">

</div>

<div class="form-group">
    <label>Select Institution</label>
    @php $institutions->prepend('Select Institution','') @endphp
    {!! Form::select('institution_id', $institutions, old('institution_id'),['class'=>'form-control']) !!}
</div>

<div class="form-group">
    <label>Material Type</label>
    @php $material_type->prepend('Select Material Type','') @endphp
    {!! Form::select('material_type_id', $material_type, old('material_type_id'),['class'=>'form-control','required'=>'required']) !!}
</div>
