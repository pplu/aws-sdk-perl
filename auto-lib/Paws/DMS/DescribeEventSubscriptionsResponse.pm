# Generated from json/callresult_class.tt

package Paws::DMS::DescribeEventSubscriptionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DMS::Types qw/DMS_EventSubscription/;
  has EventSubscriptionsList => (is => 'ro', isa => ArrayRef[DMS_EventSubscription]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventSubscriptionsList' => {
                                             'class' => 'Paws::DMS::EventSubscription',
                                             'type' => 'ArrayRef[DMS_EventSubscription]'
                                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeEventSubscriptionsResponse

=head1 ATTRIBUTES


=head2 EventSubscriptionsList => ArrayRef[DMS_EventSubscription]

A list of event subscriptions.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

1;