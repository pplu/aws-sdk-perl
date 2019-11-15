
package Paws::EC2::GetCapacityReservationUsageResult;
  use Moose;
  has AvailableInstanceCount => (is => 'ro', isa => 'Int', request_name => 'availableInstanceCount', traits => ['NameInRequest',]);
  has CapacityReservationId => (is => 'ro', isa => 'Str', request_name => 'capacityReservationId', traits => ['NameInRequest',]);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest',]);
  has InstanceUsages => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceUsage]', request_name => 'instanceUsageSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest',]);
  has TotalInstanceCount => (is => 'ro', isa => 'Int', request_name => 'totalInstanceCount', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
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


=head2 InstanceUsages => ArrayRef[L<Paws::EC2::InstanceUsage>]

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

