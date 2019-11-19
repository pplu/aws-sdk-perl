
package Paws::EC2::GetCapacityReservationUsageResult;
  use Moo;

  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::EC2::Types qw/EC2_InstanceUsage/;
  has AvailableInstanceCount => (is => 'ro', isa => Int);
  has CapacityReservationId => (is => 'ro', isa => Str);
  has InstanceType => (is => 'ro', isa => Str);
  has InstanceUsages => (is => 'ro', isa => ArrayRef[EC2_InstanceUsage]);
  has NextToken => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has TotalInstanceCount => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceUsages' => {
                                     'class' => 'Paws::EC2::InstanceUsage',
                                     'type' => 'ArrayRef[EC2_InstanceUsage]'
                                   },
               'State' => {
                            'type' => 'Str'
                          },
               'TotalInstanceCount' => {
                                         'type' => 'Int'
                                       },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CapacityReservationId' => {
                                            'type' => 'Str'
                                          },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'AvailableInstanceCount' => {
                                             'type' => 'Int'
                                           }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'AvailableInstanceCount' => 'availableInstanceCount',
                       'InstanceUsages' => 'instanceUsageSet',
                       'State' => 'state',
                       'TotalInstanceCount' => 'totalInstanceCount',
                       'CapacityReservationId' => 'capacityReservationId',
                       'InstanceType' => 'instanceType'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetCapacityReservationUsageResult

=head1 ATTRIBUTES


=head2 AvailableInstanceCount => Int

The remaining capacity. Indicates the number of instances that can be
launched in the Capacity Reservation.


=head2 CapacityReservationId => Str

The ID of the Capacity Reservation.


=head2 InstanceType => Str

The type of instance for which the Capacity Reservation reserves
capacity.


=head2 InstanceUsages => ArrayRef[EC2_InstanceUsage]

Information about the Capacity Reservation usage.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 State => Str

The current state of the Capacity Reservation. A Capacity Reservation
can be in one of the following states:

=over

=item *

C<active> - The Capacity Reservation is active and the capacity is
available for your use.

=item *

C<expired> - The Capacity Reservation expired automatically at the date
and time specified in your request. The reserved capacity is no longer
available for your use.

=item *

C<cancelled> - The Capacity Reservation was manually cancelled. The
reserved capacity is no longer available for your use.

=item *

C<pending> - The Capacity Reservation request was successful but the
capacity provisioning is still pending.

=item *

C<failed> - The Capacity Reservation request has failed. A request
might fail due to invalid request parameters, capacity constraints, or
instance limit constraints. Failed requests are retained for 60
minutes.

=back


Valid values are: C<"active">, C<"expired">, C<"cancelled">, C<"pending">, C<"failed">
=head2 TotalInstanceCount => Int

The number of instances for which the Capacity Reservation reserves
capacity.


=head2 _request_id => Str


=cut

