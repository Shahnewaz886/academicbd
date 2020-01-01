<div class="form-group">
    <label>Institution Category</label>
    @php $institutions_category->prepend('Select Category','') @endphp
    {!! Form::select('institution_category_id', $institutions_category, old('institution_category_id'),['class'=>'form-control','required'=>'required']) !!}
</div>

<div class="institutions-subject">

</div>

<div class="form-group">
    <label>Department</label>
    @php $department->prepend('Select Department','') @endphp
    {!! Form::select('department_id', $department, old('department_id'),['class'=>'form-control','required'=>'required']) !!}
</div>

<div class="form-group">
    <label>Level-Term/Year</label>
    @php $classes->prepend('Select Level-Term/Year','') @endphp
    {!! Form::select('class_id', $classes, old('class_id'),['class'=>'form-control','required'=>'required']) !!}
</div>


<div class="form-group">
    <label>Material Type</label>
    @php $material_type->prepend('Select Material Type','') @endphp
    {!! Form::select('material_type_id', $material_type, old('material_type_id'),['class'=>'form-control','required'=>'required']) !!}
</div>
