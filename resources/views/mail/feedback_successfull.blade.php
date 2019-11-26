<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>

</head>
<body>

<p>Hello {{$alldata['name']}}</p>

<table style="width:100%">
    <tr>
        <td>Name</td>
        <th>{{$alldata['name']}}</th>
    </tr>

    <tr>
        <td>Email</td>
        <th>{{$alldata['email']}}</th>
    </tr>

    <tr>
        <td>Subject</td>
        <th>{{$alldata['heading']}}</th>
    </tr>
    <tr>
        <td>Message</td>
        <th>{{$alldata['message']}}</th>
    </tr>

</table>


<p>Best Regards,</p>

<p>{{$global_setting->company_name}}</p>

</body>
</html>
