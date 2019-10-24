package Paws::Crawler;

use Moo;
use Scalar::Util 'blessed';

sub resolve_path {
  my ($self, $path, $res) = @_;

  my ($call, $rest);
  if ($path =~ m/^\{(.*?)\}(?:\.(.*))?$/) {
    ($call, $rest) = ($1, $2);
  } elsif ($path =~ m/^([^.]+?)(?:\.(.*))?$/) {
    ($call, $rest) = ($1, $2);
  }

  if ($call =~ m/^\d+$/){
    $res = $res->[$call];
  } elsif (blessed($res)) {
    $res = $res->$call;
  } else {
    $res = $res->{$call};
  }

  if (not defined $rest) {
    return $res;
  } else {
    return $self->resolve_path($rest, $res);
  }
}

1;
