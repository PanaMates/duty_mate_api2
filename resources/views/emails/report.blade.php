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
<h2>An user was reported:</h2>
<br/>
 <h3> {{$data[0]["user"]["profile"]["name"]}} {{$data[0]["user"]["profile"]["lastname"]}} </h3>


<h2> Comment about the user </h2>

<p> "{{$data[0]['comment']}}"</p>