 function getCurrentDate()
 {
      var timeStr = '';
      var curDate = new Date();
      var curYear = curDate.getFullYear();
      var curMonth = curDate.getMonth()+1;  //获取当前月份(0-11,0代表1月)
      var curDay = curDate.getDate();       //获取当前日(1-31)
     timeStr = curYear+'-';
       if(curMonth < 10)
       {
         if(curDay < 10)
         {
           timeStr +='0'+curMonth+'-0'+curDay;
         }
         else
         {
           timeStr +='0'+curMonth+'-'+curDay;
         }
       }
       else
       {
         if(curDay < 10)
         {
           timeStr +=curMonth+'-0'+curDay;
         }
         else
         {
           timeStr +=curMonth+'-'+curDay;
         }
       }
     return timeStr;
 }