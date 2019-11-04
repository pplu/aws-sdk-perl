
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




=head2 CapacityReservationId => Str




=head2 InstanceType => Str




=head2 InstanceUsages => ArrayRef[L<Paws::EC2::InstanceUsage>]




=head2 NextToken => Str




=head2 State => Str



Valid values are: C<"active">, C<"expired">, C<"cancelled">, C<"pending">, C<"failed">
=head2 TotalInstanceCount => Int




=head2 _request_id => Str


=cut

