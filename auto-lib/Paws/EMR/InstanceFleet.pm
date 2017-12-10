package Paws::EMR::InstanceFleet;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has InstanceFleetType => (is => 'ro', isa => 'Str');
  has InstanceTypeSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EMR::InstanceTypeSpecification]');
  has LaunchSpecifications => (is => 'ro', isa => 'Paws::EMR::InstanceFleetProvisioningSpecifications');
  has Name => (is => 'ro', isa => 'Str');
  has ProvisionedOnDemandCapacity => (is => 'ro', isa => 'Int');
  has ProvisionedSpotCapacity => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Paws::EMR::InstanceFleetStatus');
  has TargetOnDemandCapacity => (is => 'ro', isa => 'Int');
  has TargetSpotCapacity => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::InstanceFleet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::InstanceFleet object:

  $service_obj->Method(Att1 => { Id => $value, ..., TargetSpotCapacity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::InstanceFleet object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Describes an instance fleet, which is a group of EC2 instances that
host a particular node type (master, core, or task) in an Amazon EMR
cluster. Instance fleets can consist of a mix of instance types and
On-Demand and Spot instances, which are provisioned to meet a defined
target capacity.

The instance fleet configuration is available only in Amazon EMR
versions 4.8.0 and later, excluding 5.0.x versions.

=head1 ATTRIBUTES


=head2 Id => Str

  The unique identifier of the instance fleet.


=head2 InstanceFleetType => Str

  The node type that the instance fleet hosts. Valid values are MASTER,
CORE, or TASK.


=head2 InstanceTypeSpecifications => ArrayRef[L<Paws::EMR::InstanceTypeSpecification>]

  The specification for the instance types that comprise an instance
fleet. Up to five unique instance specifications may be defined for
each instance fleet.


=head2 LaunchSpecifications => L<Paws::EMR::InstanceFleetProvisioningSpecifications>

  Describes the launch specification for an instance fleet.


=head2 Name => Str

  A friendly name for the instance fleet.


=head2 ProvisionedOnDemandCapacity => Int

  The number of On-Demand units that have been provisioned for the
instance fleet to fulfill C<TargetOnDemandCapacity>. This provisioned
capacity might be less than or greater than C<TargetOnDemandCapacity>.


=head2 ProvisionedSpotCapacity => Int

  The number of Spot units that have been provisioned for this instance
fleet to fulfill C<TargetSpotCapacity>. This provisioned capacity might
be less than or greater than C<TargetSpotCapacity>.


=head2 Status => L<Paws::EMR::InstanceFleetStatus>

  The current status of the instance fleet.


=head2 TargetOnDemandCapacity => Int

  The target capacity of On-Demand units for the instance fleet, which
determines how many On-Demand instances to provision. When the instance
fleet launches, Amazon EMR tries to provision On-Demand instances as
specified by InstanceTypeConfig. Each instance configuration has a
specified C<WeightedCapacity>. When an On-Demand instance is
provisioned, the C<WeightedCapacity> units count toward the target
capacity. Amazon EMR provisions instances until the target capacity is
totally fulfilled, even if this results in an overage. For example, if
there are 2 units remaining to fulfill capacity, and Amazon EMR can
only provision an instance with a C<WeightedCapacity> of 5 units, the
instance is provisioned, and the target capacity is exceeded by 3
units. You can use InstanceFleet$ProvisionedOnDemandCapacity to
determine the Spot capacity units that have been provisioned for the
instance fleet.

If not specified or set to 0, only Spot instances are provisioned for
the instance fleet using C<TargetSpotCapacity>. At least one of
C<TargetSpotCapacity> and C<TargetOnDemandCapacity> should be greater
than 0. For a master instance fleet, only one of C<TargetSpotCapacity>
and C<TargetOnDemandCapacity> can be specified, and its value must be
1.


=head2 TargetSpotCapacity => Int

  The target capacity of Spot units for the instance fleet, which
determines how many Spot instances to provision. When the instance
fleet launches, Amazon EMR tries to provision Spot instances as
specified by InstanceTypeConfig. Each instance configuration has a
specified C<WeightedCapacity>. When a Spot instance is provisioned, the
C<WeightedCapacity> units count toward the target capacity. Amazon EMR
provisions instances until the target capacity is totally fulfilled,
even if this results in an overage. For example, if there are 2 units
remaining to fulfill capacity, and Amazon EMR can only provision an
instance with a C<WeightedCapacity> of 5 units, the instance is
provisioned, and the target capacity is exceeded by 3 units. You can
use InstanceFleet$ProvisionedSpotCapacity to determine the Spot
capacity units that have been provisioned for the instance fleet.

If not specified or set to 0, only On-Demand instances are provisioned
for the instance fleet. At least one of C<TargetSpotCapacity> and
C<TargetOnDemandCapacity> should be greater than 0. For a master
instance fleet, only one of C<TargetSpotCapacity> and
C<TargetOnDemandCapacity> can be specified, and its value must be 1.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

