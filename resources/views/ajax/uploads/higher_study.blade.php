<div class="form-group">
    <label>Standadized Tests</label>
    @php $standarized_tests->prepend('Select Standadized Tests','') @endphp
    {!! Form::select('tests_id', $standarized_tests, old('tests_id'),['class'=>'form-control','required'=>'required']) !!}
</div>
<div class="form-group">
    <label>Material Type</label>
    @php $material_type->prepend('Select Material Type','') @endphp
    {!! Form::select('material_type_id', $material_type, old('material_type_id'),['class'=>'form-control','required'=>'required']) !!}
</div>