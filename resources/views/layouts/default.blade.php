<html>
    <head>
        @include('partials.head')
    </head>


    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
   
        @include('partials.header')
        
        @yield('content')
  
        
        @include('partials.footer')
        
</body>
        
  



</html>