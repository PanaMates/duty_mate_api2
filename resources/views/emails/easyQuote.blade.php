<style>
    label{
        color:grey;
    }
    h3{
       text-transform: capitalize;
    }
    h2{
       text-transform: capitalize;
    }
    
</style>

<table>
<tr>
    <th>Service Type</th><th>{{$data->service_type}}</th>
    <th>Origin </th><th>{{$data->origin}}</th>
    <th>Destiny</th><th>{{$data->destiny}}</th>
    <th>Appointment Date</th><th>{{$data->appointment_date}}</th>
     <th>Name</th><th>{{$data->name}}</th>
    <th>email </th><th>{{$data->email}}</th>
    <th>phone</th><th>{{$data->phone}}</th>
    <th>message</th><th>{{$data->message}}</th>
</tr>

<tr>
    <th>hello {{$data}}</th>
 
</tr>

</table>


