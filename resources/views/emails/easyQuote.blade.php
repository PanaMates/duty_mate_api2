<style>
        body {
        font: normal medium/1.4 sans-serif;
        }
        table {
        border-collapse: collapse;
        width: 100%;
        }
        th, td {
        padding: 0.25rem;
        text-align: left;
        border: 1px solid #ccc;
        }
        tbody tr:nth-child(odd) {
        background: #eee;
        }
    
</style>

<table class="zebra"> 
                <thead> 
                <tr> 
                    <th>Name</th> 
                    <th>Phone</th> 
                    <th>Email</th> 
                    <th>Message</th> 
                    <th>Apo. Date</th> 
                    <th>Origin</th>
                    <th>Destiny</th>
                     <th>S. Type</th>
                </tr> 
                </thead> 
                <tbody> 
                <tr> 
                    <td>{{$data->name}}</td> 
                    <td>{{$data->phone}}</td> 
                    <td>{{$data->email}}</td> 
                    <td>{{$data->message}}</td> 
                    <td>{{$data->appointment_date}}</td> 
                    <td>{{$data->origin}}</td> 
                    <td>{{$data->destiny}}</td> 
                    <td>{{$data->service_type}}</td> 
                </tr> 

              
               
                </tbody> 
</table> 


