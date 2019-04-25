
package Paws::SNS::GetSubscriptionAttributesResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SNS::SubscriptionAttributesMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::GetSubscriptionAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::SNS::SubscriptionAttributesMap>

A map of the subscription's attributes. Attributes in this map include
the following:

=over

=item *

C<ConfirmationWasAuthenticated> E<ndash> C<true> if the subscription
confirmation request was authenticated.

=item *

C<DeliveryPolicy> E<ndash> The JSON serialization of the subscription's
delivery policy.

=item *

C<EffectiveDeliveryPolicy> E<ndash> The JSON serialization of the
effective delivery policy that takes into account the topic delivery
policy and account system defaults.

=item *

C<FilterPolicy> E<ndash> The filter policy JSON that is assigned to the
subscription.

=item *

C<Owner> E<ndash> The AWS account ID of the subscription's owner.

=item *

C<PendingConfirmation> E<ndash> C<true> if the subscription hasn't been
confirmed. To confirm a pending subscription, call the
C<ConfirmSubscription> action with a confirmation token.

=item *

C<RawMessageDelivery> E<ndash> C<true> if raw message delivery is
enabled for the subscription. Raw messages are free of JSON formatting
and can be sent to HTTP/S and Amazon SQS endpoints.

=item *

C<SubscriptionArn> E<ndash> The subscription's ARN.

=item *

C<TopicArn> E<ndash> The topic ARN that the subscription is associated
with.

=back



=head2 _request_id => Str


=cut

