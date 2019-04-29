
package Paws::Glue::ListDevEndpointsResponse;
  use Moose;
  has DevEndpointNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListDevEndpointsResponse

=head1 ATTRIBUTES


=head2 DevEndpointNames => ArrayRef[Str|Undef]

The names of all DevEndpoints in the account, or the DevEndpoints with
the specified tags.


=head2 NextToken => Str

A continuation token, if the returned list does not contain the last
metric available.


=head2 _request_id => Str


=cut

1;