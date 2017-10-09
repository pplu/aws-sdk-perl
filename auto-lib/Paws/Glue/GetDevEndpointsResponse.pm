
package Paws::Glue::GetDevEndpointsResponse;
  use Moose;
  has DevEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::Glue::DevEndpoint]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDevEndpointsResponse

=head1 ATTRIBUTES


=head2 DevEndpoints => ArrayRef[L<Paws::Glue::DevEndpoint>]

A list of DevEndpoint definitions.


=head2 NextToken => Str

A continuation token, if not all DevEndpoint definitions have yet been
returned.


=head2 _request_id => Str


=cut

1;