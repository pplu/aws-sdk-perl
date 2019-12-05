
package Paws::SNS::GetTopicAttributesResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SNS::TopicAttributesMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::GetTopicAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::SNS::TopicAttributesMap>

A map of the topic's attributes. Attributes in this map include the
following:

=over

=item *

C<DeliveryPolicy> E<ndash> The JSON serialization of the topic's
delivery policy.

=item *

C<DisplayName> E<ndash> The human-readable name used in the C<From>
field for notifications to C<email> and C<email-json> endpoints.

=item *

C<Owner> E<ndash> The AWS account ID of the topic's owner.

=item *

C<Policy> E<ndash> The JSON serialization of the topic's access control
policy.

=item *

C<SubscriptionsConfirmed> E<ndash> The number of confirmed
subscriptions for the topic.

=item *

C<SubscriptionsDeleted> E<ndash> The number of deleted subscriptions
for the topic.

=item *

C<SubscriptionsPending> E<ndash> The number of subscriptions pending
confirmation for the topic.

=item *

C<TopicArn> E<ndash> The topic's ARN.

=item *

C<EffectiveDeliveryPolicy> E<ndash> Yhe JSON serialization of the
effective delivery policy, taking system defaults into account.

=back

The following attribute applies only to server-side-encryption
(https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html):

=over

=item *

C<KmsMasterKeyId> - The ID of an AWS-managed customer master key (CMK)
for Amazon SNS or a custom CMK. For more information, see Key Terms
(https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms).
For more examples, see KeyId
(https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters)
in the I<AWS Key Management Service API Reference>.

=back



=head2 _request_id => Str


=cut

