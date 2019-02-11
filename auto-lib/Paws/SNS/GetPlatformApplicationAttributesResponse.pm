
package Paws::SNS::GetPlatformApplicationAttributesResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SNS::MapStringToString');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::GetPlatformApplicationAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::SNS::MapStringToString>

Attributes include the following:

=over

=item *

C<EventEndpointCreated> E<ndash> Topic ARN to which EndpointCreated
event notifications should be sent.

=item *

C<EventEndpointDeleted> E<ndash> Topic ARN to which EndpointDeleted
event notifications should be sent.

=item *

C<EventEndpointUpdated> E<ndash> Topic ARN to which EndpointUpdate
event notifications should be sent.

=item *

C<EventDeliveryFailure> E<ndash> Topic ARN to which DeliveryFailure
event notifications should be sent upon Direct Publish delivery failure
(permanent) to one of the application's endpoints.

=back



=head2 _request_id => Str


=cut

