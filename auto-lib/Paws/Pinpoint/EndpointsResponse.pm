
package Paws::Pinpoint::EndpointsResponse;
  use Moose;
  has Item => (is => 'ro', isa => 'ArrayRef[Paws::Pinpoint::EndpointResponse]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EndpointsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Item => ArrayRef[L<Paws::Pinpoint::EndpointResponse>]

An array of responses, one for each endpoint that's associated with the
user ID.


=head2 _request_id => Str


=cut

