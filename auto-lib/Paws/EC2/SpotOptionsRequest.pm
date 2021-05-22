package Paws::EC2::SpotOptionsRequest;
  use Moose;
  has AllocationStrategy => (is => 'ro', isa => 'Str');
  has InstanceInterruptionBehavior => (is => 'ro', isa => 'Str');
  has InstancePoolsToUseCount => (is => 'ro', isa => 'Int');
  has MaintenanceStrategies => (is => 'ro', isa => 'Paws::EC2::FleetSpotMaintenanceStrategiesRequest');
  has MaxTotalPrice => (is => 'ro', isa => 'Str');
  has MinTargetCapacity => (is => 'ro', isa => 'Int');
  has SingleAvailabilityZone => (is => 'ro', isa => 'Bool');
  has SingleInstanceType => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SpotOptionsRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SpotOptionsRequest object:

  $service_obj->Method(Att1 => { AllocationStrategy => $value, ..., SingleInstanceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SpotOptionsRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocationStrategy

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllocationStrategy => Str

Indicates how to allocate the target Spot Instance capacity across the
Spot Instance pools specified by the EC2 Fleet.

If the allocation strategy is C<lowest-price>, EC2 Fleet launches
instances from the Spot Instance pools with the lowest price. This is
the default allocation strategy.

If the allocation strategy is C<diversified>, EC2 Fleet launches
instances from all of the Spot Instance pools that you specify.

If the allocation strategy is C<capacity-optimized> (recommended), EC2
Fleet launches instances from Spot Instance pools with optimal capacity
for the number of instances that are launching. To give certain
instance types a higher chance of launching first, use
C<capacity-optimized-prioritized>. Set a priority for each instance
type by using the C<Priority> parameter for C<LaunchTemplateOverrides>.
You can assign the same priority to different
C<LaunchTemplateOverrides>. EC2 implements the priorities on a
best-effort basis, but optimizes for capacity first.
C<capacity-optimized-prioritized> is supported only if your fleet uses
a launch template. Note that if the On-Demand C<AllocationStrategy> is
set to C<prioritized>, the same priority is applied when fulfilling
On-Demand capacity.


=head2 InstanceInterruptionBehavior => Str

The behavior when a Spot Instance is interrupted. The default is
C<terminate>.


=head2 InstancePoolsToUseCount => Int

The number of Spot pools across which to allocate your target Spot
capacity. Valid only when Spot B<AllocationStrategy> is set to
C<lowest-price>. EC2 Fleet selects the cheapest Spot pools and evenly
allocates your target Spot capacity across the number of Spot pools
that you specify.


=head2 MaintenanceStrategies => L<Paws::EC2::FleetSpotMaintenanceStrategiesRequest>

The strategies for managing your Spot Instances that are at an elevated
risk of being interrupted.


=head2 MaxTotalPrice => Str

The maximum amount per hour for Spot Instances that you're willing to
pay.


=head2 MinTargetCapacity => Int

The minimum target capacity for Spot Instances in the fleet. If the
minimum target capacity is not reached, the fleet launches no
instances.


=head2 SingleAvailabilityZone => Bool

Indicates that the fleet launches all Spot Instances into a single
Availability Zone. Supported only for fleets of type C<instant>.


=head2 SingleInstanceType => Bool

Indicates that the fleet uses a single instance type to launch all Spot
Instances in the fleet. Supported only for fleets of type C<instant>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
