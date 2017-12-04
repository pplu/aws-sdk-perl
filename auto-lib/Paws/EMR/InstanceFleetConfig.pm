package Paws::EMR::InstanceFleetConfig;
  use Moose;
  has InstanceFleetType => (is => 'ro', isa => 'Str', required => 1);
  has InstanceTypeConfigs => (is => 'ro', isa => 'ArrayRef[Paws::EMR::InstanceTypeConfig]');
  has LaunchSpecifications => (is => 'ro', isa => 'Paws::EMR::InstanceFleetProvisioningSpecifications');
  has Name => (is => 'ro', isa => 'Str');
  has TargetOnDemandCapacity => (is => 'ro', isa => 'Int');
  has TargetSpotCapacity => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::InstanceFleetConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::InstanceFleetConfig object:

  $service_obj->Method(Att1 => { InstanceFleetType => $value, ..., TargetSpotCapacity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::InstanceFleetConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceFleetType

=head1 DESCRIPTION

The configuration that defines an instance fleet.

The instance fleet configuration is available only in Amazon EMR
versions 4.8.0 and later, excluding 5.0.x versions.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceFleetType => Str

  The node type that the instance fleet hosts. Valid values are
MASTER,CORE,and TASK.


=head2 InstanceTypeConfigs => ArrayRef[L<Paws::EMR::InstanceTypeConfig>]

  The instance type configurations that define the EC2 instances in the
instance fleet.


=head2 LaunchSpecifications => L<Paws::EMR::InstanceFleetProvisioningSpecifications>

  The launch specification for the instance fleet.


=head2 Name => Str

  The friendly name of the instance fleet.


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
units.

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
provisioned, and the target capacity is exceeded by 3 units.

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

