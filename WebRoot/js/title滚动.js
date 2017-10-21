    <script language=javascript >
        var text=document.title;
        var timerID;
        function newtext() {
            clearTimeout(timerID);                  
            document.title=text.substring(1,text.length)+text.substring(0,1);
            text=document.title.substring(0,text.length);
            timerID = setTimeout("newtext()", 500);
        }
        newtext();
    </script>