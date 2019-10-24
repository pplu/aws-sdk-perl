# Generated from callresult_class.tt

package Paws::RDS::EventSubscriptionsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_EventSubscription/;
  has EventSubscriptionsList => (is => 'ro', isa => ArrayRef[RDS_EventSubscription]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventSubscriptionsList' => {
                                             'class' => 'Paws::RDS::EventSubscription',
                                             'type' => 'ArrayRef[RDS_EventSubscription]'
                                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'EventSubscriptionsList' => 'EventSubscription'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::EventSubscriptionsMessage

=head1 ATTRIBUTES


=head2 EventSubscriptionsList => ArrayRef[RDS_EventSubscription]

A list of EventSubscriptions data types.


=head2 Marker => Str

An optional pagination token provided by a previous
DescribeOrderableDBInstanceOptions request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

