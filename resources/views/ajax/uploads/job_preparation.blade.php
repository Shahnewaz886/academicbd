<div class="form-group">
    <label>Job Exam</label>
    @php $job_exam->prepend('Select Job Exam','') @endphp
    {!! Form::select('tests_id', $job_exam, old('tests_id'),['class'=>'form-control','required'=>'required']) !!}
</div>

<div class="subject">

</div>

<div class="form-group">
    <label>Material Type</label>
    @php $material_type->prepend('Select Material Type','') @endphp
    {!! Form::select('material_type_id', $material_type, old('material_type_id'),['class'=>'form-control','required'=>'required']) !!}
</div>