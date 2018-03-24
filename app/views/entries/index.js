<% js = escape_javascript(
  render(partial: 'entries/list', locals: { students: @students })
) %>
$("#filterrific_results").html("<%= js %>");