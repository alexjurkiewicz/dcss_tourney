<%
   import loaddb, query, crawl_utils, htmlgen, re
   c = attributes['cursor']

   gkills = query.get_gkills(c)

   def ntimes(count, who):
     if count == 1:
       return who
     return "%s (%d)" % (who, count)

   for g in gkills:
     g[2] = ", ".join( [ ntimes(x[1], x[0]) for x in g[2] ] )

   table = htmlgen.table_text([ 'Ghost', 'Kills', 'Victims' ],
                           gkills, width='100', place_column=1, skip=True)

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
          "http://www.w3.org/TR/html4/strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Ghosts in the Machine</title>
    <link rel="stylesheet" type="text/css" href="tourney-score.css">
  </head>

  <body class="page_back">
    <div class="page_narrow">
      <%include file="toplink.mako"/>

      <div class="page_content">
        <div class="heading">
          <h2>Marauding Ghosts</h2>
        </div>
        ${table}
      </div>
    </div>

    ${htmlgen.update_time()}
  </body>
</html>
