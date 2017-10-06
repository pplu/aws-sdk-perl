
package Paws::Route53::DeleteHealthCheckResponse;
  use Moose;

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => '');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::DeleteHealthCheckResponse

=head1 ATTRIBUTES



=cut

