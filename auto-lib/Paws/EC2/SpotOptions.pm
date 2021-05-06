package Paws::EC2::SpotOptions;
  use Moose;
  has AllocationStrategy => (is => 'ro', isa => 'Str', request_name => 'allocationStrategy', traits => ['NameInRequest']);
  has InstanceInterruptionBehavior => (is => 'ro', isa => 'Str', request_name => 'instanceInterruptionBehavior', traits => ['NameInRequest']);
  has InstancePoolsToUseCount => (is => 'ro', isa => 'Int', request_name => 'instancePoolsToUseCount', traits => ['NameInRequest']);
  has MaxTotalPrice => (is => 'ro', isa => 'Str', request_name => 'maxTotalPrice', traits => ['NameInRequest']);
  has MinTargetCapacity => (is => 'ro', isa => 'Int', request_name => 'minTargetCapacity', traits => ['NameInRequest']);
  has SingleAvailabilityZone => (is => 'ro', isa => 'Bool', request_name => 'singleAvailabilityZone', traits => ['NameInRequest']);
  has SingleInstanceType => (is => 'ro', isa => 'Bool', request_name => 'singleInstanceType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SpotOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SpotOptions object:

  $service_obj->Method(Att1 => { AllocationStrategy => $value, ..., SingleInstanceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SpotOptions object:

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

If the allocation strategy is C<capacity-optimized>, EC2 Fleet launches
instances from Spot Instance pools with optimal capacity for the number
of instances that are launching.


=head2 InstanceInterruptionBehavior => Str

The behavior when a Spot Instance is interrupted. The default is
C<terminate>.


=head2 InstancePoolsToUseCount => Int

The number of Spot pools across which to allocate your target Spot
capacity. Valid only when B<AllocationStrategy> is set to
C<lowest-price>. EC2 Fleet selects the cheapest Spot pools and evenly
allocates your target Spot capacity across the number of Spot pools
that you specify.


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
