
package Paws::WorkDocs::DescribeNotificationSubscriptionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkDocs::Types qw/WorkDocs_Subscription/;
  has Marker => (is => 'ro', isa => Str);
  has Subscriptions => (is => 'ro', isa => ArrayRef[WorkDocs_Subscription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Subscriptions' => {
                                    'type' => 'ArrayRef[WorkDocs_Subscription]',
                                    'class' => 'Paws::WorkDocs::Subscription'
                                  },
               'Marker' => {
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

Paws::WorkDocs::DescribeNotificationSubscriptionsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

The marker to use when requesting the next set of results. If there are
no additional results, the string is empty.


=head2 Subscriptions => ArrayRef[WorkDocs_Subscription]

The subscriptions.


=head2 _request_id => Str


=cut

