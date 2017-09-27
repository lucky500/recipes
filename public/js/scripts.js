$(document).ready(function(){
  $('.recipes').sort(function (a, b) {
     var contentA =parseInt( $(a).attr('data-sort'));
     var contentB =parseInt( $(b).attr('data-sort'));
     return (contentA < contentB) ? -1 : (contentA > contentB) ? 1 : 0;
  })
});
