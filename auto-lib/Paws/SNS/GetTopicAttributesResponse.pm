# Generated from callresult_class.tt

package Paws::SNS::GetTopicAttributesResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SNS::Types qw/SNS_TopicAttributesMap/;
  has Attributes => (is => 'ro', isa => SNS_TopicAttributesMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'class' => 'Paws::SNS::TopicAttributesMap',
                                 'type' => 'SNS_TopicAttributesMap'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::GetTopicAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => SNS_TopicAttributesMap

A map of the topic's attributes. Attributes in this map include the
following:

=over

=item *

C<TopicArn> E<ndash> the topic's ARN

=item *

C<Owner> E<ndash> the AWS account ID of the topic's owner

=item *

C<Policy> E<ndash> the JSON serialization of the topic's access control
policy

=item *

C<DisplayName> E<ndash> the human-readable name used in the "From"
field for notifications to email and email-json endpoints

=item *

C<SubscriptionsPending> E<ndash> the number of subscriptions pending
confirmation on this topic

=item *

C<SubscriptionsConfirmed> E<ndash> the number of confirmed
subscriptions on this topic

=item *

C<SubscriptionsDeleted> E<ndash> the number of deleted subscriptions on
this topic

=item *

C<DeliveryPolicy> E<ndash> the JSON serialization of the topic's
delivery policy

=item *

C<EffectiveDeliveryPolicy> E<ndash> the JSON serialization of the
effective delivery policy that takes into account system defaults

=back



=head2 _request_id => Str


=cut

