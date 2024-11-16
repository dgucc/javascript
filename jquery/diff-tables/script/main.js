function highlightDiffCells(tableId1, tableId2){
   var rowLocator1 = "#" + tableId1 + " tr";

   $(rowLocator1).each(function() { // for each tr of the 1st table
      var rowId = $(this).find("td:eq(0)").text();// 1st column contains keys
                                                  // "$(this)" : each rowLocator1

      if (rowId != ""){ // rowId not empty string
         var keyLocator2 = "#" + tableId2 + " td:contains(" + rowId + ")";
         var nbCols = $(this).find("td").length;

         for(var i=1; i<nbCols; i++){ // for each cell of the corresponding rows in both tables
            var cellValue1 = $(this).find("td:eq(" + i + ")").text();
            var cellValue2 = $(keyLocator2).closest("tr").find("td:eq(" + i + ")").text();

            if($.trim(cellValue1) != $.trim(cellValue2)){
               $(this).find("td:eq(" + i + ")").css("color", "red");
            }else{
                $(this).find("td:eq(" + i + ")").css("color", "");
            }
         }
      }
   });
}

