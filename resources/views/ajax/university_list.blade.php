<ul>
    @foreach($universities as $university)
    <li><a target="_blank" href="{{ $university->link }}">{{ $university->name }}</a></li>
    @endforeach
</ul>