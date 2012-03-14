$(document).ready(function() {
  $('ul.technologies li a, p.intro a').each(function() { $(this).attr('target', '_blank') });
});