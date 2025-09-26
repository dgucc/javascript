# Include html into another

Using jquery 

```html
<!DOCTYPE html>
<html lang="fr">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <!-- jquery -->
   <script src="js/jquery-3.7.1.min.js"></script>
   <!-- script.js -->
   <script src="js/script.js"></script>
   <!-- style.css -->
   <link rel="stylesheet" href="css/style.css">
   
   <title>Document</title>
</head>

<body>

<div id="mainContent">
   <div data-include="header"></div>
   <div data-include="body"></div>
   <div data-include="footer"></div>
</div>

<script>
$(function () {
   var includes = $('[data-include]')
   $.each(includes, function () {
      var file = 'views/' + $(this).data('include') + '.html'
      $(this).load(file)
   })
})  
</script>
</body>

</html>
```
