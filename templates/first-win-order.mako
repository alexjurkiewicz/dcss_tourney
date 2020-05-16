<%
   import loaddb, query, html
   c = attributes['cursor']

   game_text = \
      html.games_table( query.first_win_order(c, limit = None),
                        first = 'end_time' )
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
          "http://www.w3.org/TR/html4/strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Time of First Win Ranking</title>
    <link rel="stylesheet" type="text/css" href="tourney-score.css">
  </head>

  <body class="page_back">
    <div class="page">
      <%include file="toplink.mako"/>

      <div class="page_content">

        <h2>Time of First Win Ranking</h2>
        <div class="fineprint">
		 The first win of every player in the tournament, ranked by finish
		 time-of-day. Players who have not yet won do not appear in this
		 ranking.
        </div>k

		${game_text}
	  </div>

    ${html.update_time()}
  </body>
</html>
