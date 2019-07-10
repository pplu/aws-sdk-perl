
package Paws::Glue::BatchGetDevEndpointsResponse;
  use Moose;
  has DevEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::Glue::DevEndpoint]');
  has DevEndpointsNotFound => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetDevEndpointsResponse

=head1 ATTRIBUTES


=head2 DevEndpoints => ArrayRef[L<Paws::Glue::DevEndpoint>]

A list of DevEndpoint definitions.


=head2 DevEndpointsNotFound => ArrayRef[Str|Undef]

A list of DevEndpoints not found.


=head2 _request_id => Str


=cut

1;