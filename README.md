# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


<!-- Experiment:
<ul><h3>Results:<%= @experiments.first.results %></h3></ul>
<ul><h3>Conclusions: <%= @experiments.first.conclusions %></h3></ul>
<% if current_user.id == @experiments.first.experimenter_id %>
<%= link_to "Edit Experiment", edit_proposal_experiment_path(proposal_id: @experiments.first.proposal.id, id: @experiments.first.id) %>
<%= link_to "Delete", proposal_experiment_path(proposal_id: @experiments.first.proposal.id, id: @experiments.first.id), method: :delete%>
<%= link_to "Back to proposal", proposal_path(@experiments.first.proposal)%>
<% else %>
<%= link_to "Back to proposal", proposal_path(@experiments.first.proposal)%>
<% end %>
</ul> -->
