<div class="form-group">
    <label>Skill Category</label>
    <select name="skill_development_category_id" required class="custom-select form-control">
        <option>Select Skill Category</option>
        @foreach($skill_development_category as $row)
            <optgroup label="{{$row->title}}">
                @foreach($row->child as $row)
                    <option value="{{$row->id}}">{{$row->title}}</option>
                @endforeach
            </optgroup>
        @endforeach
    </select>
</div>

<div class="form-group">
    <label>Material Type</label>
    @php $material_type->prepend('Select Material Type','') @endphp
    {!! Form::select('material_type_id', $material_type, old('material_type_id'),['class'=>'form-control','required'=>'required']) !!}
</div>