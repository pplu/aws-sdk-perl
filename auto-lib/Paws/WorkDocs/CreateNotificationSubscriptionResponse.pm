
package Paws::WorkDocs::CreateNotificationSubscriptionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkDocs::Types qw/WorkDocs_Subscription/;
  has Subscription => (is => 'ro', isa => WorkDocs_Subscription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Subscription' => {
                                   'class' => 'Paws::WorkDocs::Subscription',
                                   'type' => 'WorkDocs_Subscription'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::CreateNotificationSubscriptionResponse

=head1 ATTRIBUTES


=head2 Subscription => WorkDocs_Subscription

The subscription.


=head2 _request_id => Str


=cut

