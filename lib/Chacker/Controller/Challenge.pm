package Chacker::Controller::Challenge;
use Mojo::Base 'Mojolicious::Controller', -signatures;

sub list ($c) {
  my $challenges = $c->model('challenge')->list;
  return $c->api->cool(challenges => $challenges);
}

sub add ($c) {
  my $challenge = $c->req->json;
  my $ch_id = $c->model('challenge')->add($challenge);
  return $c->api->cool(id => $ch_id) if $ch_id;
  return $c->api->sad("Can't add new challenge");
}

1;