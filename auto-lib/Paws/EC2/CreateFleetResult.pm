
package Paws::EC2::CreateFleetResult;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CreateFleetError]', request_name => 'errorSet', traits => ['NameInRequest',]);
  has FleetId => (is => 'ro', isa => 'Str', request_name => 'fleetId', traits => ['NameInRequest',]);
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CreateFleetInstance]', request_name => 'fleetInstanceSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateFleetResult

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::EC2::CreateFleetError>]

Information about the instances that could not be launched by the
fleet. Valid only when B<Type> is set to C<instant>.


=head2 FleetId => Str

The ID of the EC2 Fleet.


=head2 Instances => ArrayRef[L<Paws::EC2::CreateFleetInstance>]

Information about the instances that were launched by the fleet. Valid
only when B<Type> is set to C<instant>.


=head2 _request_id => Str


=cut

