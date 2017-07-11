package Paws::Net::APIResponse;
  use Moose;
  use HTTP::Headers;

  has status   => (is => 'rw', isa => 'Int', required => 1);
  has headers  => (is => 'rw', isa => 'HashRef', required => 1);
  has content  => (is => 'rw', isa => 'Str|Undef');

  sub header {
    my ($self, $header) = @_;
    return $self->headers->{ $header };
  }

  sub has_header {
    my ($self, $header) = @_;
    return defined $self->headers->{ $header };
  }

1;
