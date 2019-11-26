<div class="institutions">
    <div class="form-group">
        <label>Institution Category</label>
        @php $institution_category->prepend('Select Institution Category','') @endphp
        {!! Form::select('institution_category_id', $institution_category, old('institution_category_id'),['class'=>'form-control','required'=>'required']) !!}
    </div>
</div>