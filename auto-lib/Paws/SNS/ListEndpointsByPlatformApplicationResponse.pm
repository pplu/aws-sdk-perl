
package Paws::SNS::ListEndpointsByPlatformApplicationResponse;
  use Moose;
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Paws::SNS::Endpoint]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::ListEndpointsByPlatformApplicationResponse

=head1 ATTRIBUTES


=head2 Endpoints => ArrayRef[L<Paws::SNS::Endpoint>]

Endpoints returned for ListEndpointsByPlatformApplication action.


=head2 NextToken => Str

NextToken string is returned when calling
ListEndpointsByPlatformApplication action if additional records are
available after the first page results.


=head2 _request_id => Str


=cut

