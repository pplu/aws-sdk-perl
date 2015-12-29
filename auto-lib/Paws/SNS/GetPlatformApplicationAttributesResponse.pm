
package Paws::SNS::GetPlatformApplicationAttributesResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'HashRef[Str]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::GetPlatformApplicationAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => HashRef[Str]

  Attributes include the following:

=over

=item * C<EventEndpointCreated> -- Topic ARN to which EndpointCreated
event notifications should be sent.

=item * C<EventEndpointDeleted> -- Topic ARN to which EndpointDeleted
event notifications should be sent.

=item * C<EventEndpointUpdated> -- Topic ARN to which EndpointUpdate
event notifications should be sent.

=item * C<EventDeliveryFailure> -- Topic ARN to which DeliveryFailure
event notifications should be sent upon Direct Publish delivery failure
(permanent) to one of the application's endpoints.

=back



=cut

