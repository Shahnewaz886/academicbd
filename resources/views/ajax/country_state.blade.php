<option value="">Select State</option>
@foreach($states as $state)
    <option value="{{ $state->id }}">{{ $state->title }}</option>
@endforeach