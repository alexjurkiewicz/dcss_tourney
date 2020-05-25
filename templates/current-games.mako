<%

   import loaddb, query, crawl_utils, htmlgen
   c = attributes['cursor']
   whereis_list = htmlgen.whereis_table(c)

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
          "http://www.w3.org/TR/html4/strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Current Games</title>
    <link rel="stylesheet" type="text/css" href="tourney-score.css">
  </head>

  <body class="page_back">
    <div class="page">
      <%include file="toplink.mako"/>

      <div class="page_content">
        <div class="content">

        <h2>Top Games in Progress</h2>
        <div class="fineprint">
          Games in bold have been active within the past hour.
        </div>
        ${htmlgen.table_text( [ 'Player', 'Runes', 'Level', 'Character', 'Title', 'Location', 'Time', 'Server' ], whereis_list, count=False, bold=True)}

        </div>
      </div>
    </div>

    ${htmlgen.update_time()}
  </body>
</html>
