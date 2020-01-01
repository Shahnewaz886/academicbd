<div class="form-group">
    <label>Subject/Course</label>
    @php $job_exam_subject->prepend('Select Subject/Course','') @endphp
    {!! Form::select('subject_id', $job_exam_subject, old('subject_id'),['class'=>'form-control','required'=>'required']) !!}
</div>