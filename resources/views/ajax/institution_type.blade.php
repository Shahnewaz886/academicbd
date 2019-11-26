<div class="institutions">
    <div class="form-group">
        <label>Institution type</label>
        @php $institution_type->prepend('Select Institution type','') @endphp
        {!! Form::select('institution_type_id', $institution_type, old('institution_type_id'),['class'=>'form-control','required'=>'required']) !!}
    </div>
</div>