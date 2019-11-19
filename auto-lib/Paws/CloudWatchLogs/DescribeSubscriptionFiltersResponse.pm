# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::DescribeSubscriptionFiltersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_SubscriptionFilter/;
  has NextToken => (is => 'ro', isa => Str);
  has SubscriptionFilters => (is => 'ro', isa => ArrayRef[CloudWatchLogs_SubscriptionFilter]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'SubscriptionFilters' => {
                                          'class' => 'Paws::CloudWatchLogs::SubscriptionFilter',
                                          'type' => 'ArrayRef[CloudWatchLogs_SubscriptionFilter]'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'SubscriptionFilters' => 'subscriptionFilters',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeSubscriptionFiltersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 SubscriptionFilters => ArrayRef[CloudWatchLogs_SubscriptionFilter]

The subscription filters.


=head2 _request_id => Str


=cut

1;