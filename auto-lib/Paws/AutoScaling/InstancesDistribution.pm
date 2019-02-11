package Paws::AutoScaling::InstancesDistribution;
  use Moose;
  has OnDemandAllocationStrategy => (is => 'ro', isa => 'Str');
  has OnDemandBaseCapacity => (is => 'ro', isa => 'Int');
  has OnDemandPercentageAboveBaseCapacity => (is => 'ro', isa => 'Int');
  has SpotAllocationStrategy => (is => 'ro', isa => 'Str');
  has SpotInstancePools => (is => 'ro', isa => 'Int');
  has SpotMaxPrice => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::InstancesDistribution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::InstancesDistribution object:

  $service_obj->Method(Att1 => { OnDemandAllocationStrategy => $value, ..., SpotMaxPrice => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::InstancesDistribution object:

  $result = $service_obj->Method(...);
  $result->Att1->OnDemandAllocationStrategy

=head1 DESCRIPTION

Describes an instances distribution for an Auto Scaling group with
MixedInstancesPolicy.

The instances distribution specifies the distribution of On-Demand
Instances and Spot Instances, the maximum price to pay for Spot
Instances, and how the Auto Scaling group allocates instance types.

=head1 ATTRIBUTES


=head2 OnDemandAllocationStrategy => Str

  Indicates how to allocate instance types to fulfill On-Demand capacity.

The only valid value is C<prioritized>, which is also the default
value. This strategy uses the order of instance types in the
B<Overrides> array of LaunchTemplate to define the launch priority of
each instance type. The first instance type in the array is prioritized
higher than the last. If all your On-Demand capacity cannot be
fulfilled using your highest priority instance, then the Auto Scaling
groups launches the remaining capacity using the second priority
instance type, and so on.


=head2 OnDemandBaseCapacity => Int

  The minimum amount of the Auto Scaling group's capacity that must be
fulfilled by On-Demand Instances. This base portion is provisioned
first as your group scales.

The default value is 0. If you leave this parameter set to 0, On-Demand
Instances are launched as a percentage of the Auto Scaling group's
desired capacity, per the B<OnDemandPercentageAboveBaseCapacity>
setting.


=head2 OnDemandPercentageAboveBaseCapacity => Int

  Controls the percentages of On-Demand Instances and Spot Instances for
your additional capacity beyond B<OnDemandBaseCapacity>.

The range is 0E<ndash>100. The default value is 100. If you leave this
parameter set to 100, the percentages are 100% for On-Demand Instances
and 0% for Spot Instances.


=head2 SpotAllocationStrategy => Str

  Indicates how to allocate Spot capacity across Spot pools.

The only valid value is C<lowest-price>, which is also the default
value. The Auto Scaling group selects the cheapest Spot pools and
evenly allocates your Spot capacity across the number of Spot pools
that you specify.


=head2 SpotInstancePools => Int

  The number of Spot pools to use to allocate your Spot capacity. The
Spot pools are determined from the different instance types in the
B<Overrides> array of LaunchTemplate.

The range is 1E<ndash>20 and the default is 2.


=head2 SpotMaxPrice => Str

  The maximum price per unit hour that you are willing to pay for a Spot
Instance. If you leave this value blank (which is the default), the
maximum Spot price is set at the On-Demand price.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

