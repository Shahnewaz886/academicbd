<div class="form-group">
    <label>Subject/Course</label>
    @php $subject->prepend('Select Subject/Course','') @endphp
    {!! Form::select('subject_id', $subject, old('subject_id'),['class'=>'form-control','required'=>'required']) !!}
</div>