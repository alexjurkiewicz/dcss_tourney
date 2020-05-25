<%page args="rank_description"/>

<%
  import htmlgen
  import scoring_data
%>

<h2>Clan Categories</h2>
% for category in scoring_data.CLAN_CATEGORIES:
<%
  results = clan_category_results[category.name]
%>
<div class="row">
  <div class="col">
    <div class="jumbotron category cat-clan-${htmlgen.slugify(category.name)} text-light p-3">
      <h2 class="text-outline-black-1">${category.name}</h2>
      <div class="row">
        <div class="col col-sm-4">
          <h3 class="text-outline-black-1">${rank_description(results.rank)}</h3>
        </div>
        <div class="col-sm">
          <p class="d-none d-sm-block">
            <i>${category.desc}</i>
          </p>
          % if results.details is not None:
          <p class="lead">
            ${results.details}
          </p>
          % endif
        </div>
      </div>
    </div>
  </div>
</div>
% endfor
