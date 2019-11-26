    <option value="">Select City</option>
@foreach($city as $row)
    <option value="{{ $row->id }}">{{ $row->title }}</option>
@endforeach