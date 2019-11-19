# Generated from default/object.tt
package Paws::AutoScaling::InstancesDistribution;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::AutoScaling::Types qw//;
  has OnDemandAllocationStrategy => (is => 'ro', isa => Str);
  has OnDemandBaseCapacity => (is => 'ro', isa => Int);
  has OnDemandPercentageAboveBaseCapacity => (is => 'ro', isa => Int);
  has SpotAllocationStrategy => (is => 'ro', isa => Str);
  has SpotInstancePools => (is => 'ro', isa => Int);
  has SpotMaxPrice => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SpotInstancePools' => {
                                        'type' => 'Int'
                                      },
               'OnDemandPercentageAboveBaseCapacity' => {
                                                          'type' => 'Int'
                                                        },
               'OnDemandBaseCapacity' => {
                                           'type' => 'Int'
                                         },
               'SpotAllocationStrategy' => {
                                             'type' => 'Str'
                                           },
               'SpotMaxPrice' => {
                                   'type' => 'Str'
                                 },
               'OnDemandAllocationStrategy' => {
                                                 'type' => 'Str'
                                               }
             }
}
;
    return $Params_map;
  }


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
Instances, and how the Auto Scaling group allocates instance types to
fulfill On-Demand and Spot capacity.

When you update C<SpotAllocationStrategy>, C<SpotInstancePools>, or
C<SpotMaxPrice>, this update action does not deploy any changes across
the running Amazon EC2 instances in the group. Your existing Spot
Instances continue to run as long as the maximum price for those
instances is higher than the current Spot price. When scale out occurs,
Amazon EC2 Auto Scaling launches instances based on the new settings.
When scale in occurs, Amazon EC2 Auto Scaling terminates instances
according to the group's termination policies.

=head1 ATTRIBUTES


=head2 OnDemandAllocationStrategy => Str

  Indicates how to allocate instance types to fulfill On-Demand capacity.

The only valid value is C<prioritized>, which is also the default
value. This strategy uses the order of instance type overrides for the
LaunchTemplate to define the launch priority of each instance type. The
first instance type in the array is prioritized higher than the last.
If all your On-Demand capacity cannot be fulfilled using your highest
priority instance, then the Auto Scaling groups launches the remaining
capacity using the second priority instance type, and so on.


=head2 OnDemandBaseCapacity => Int

  The minimum amount of the Auto Scaling group's capacity that must be
fulfilled by On-Demand Instances. This base portion is provisioned
first as your group scales.

Default if not set is 0. If you leave it set to 0, On-Demand Instances
are launched as a percentage of the Auto Scaling group's desired
capacity, per the C<OnDemandPercentageAboveBaseCapacity> setting.

An update to this setting means a gradual replacement of instances to
maintain the specified number of On-Demand Instances for your base
capacity. When replacing instances, Amazon EC2 Auto Scaling launches
new instances before terminating the old ones.


=head2 OnDemandPercentageAboveBaseCapacity => Int

  Controls the percentages of On-Demand Instances and Spot Instances for
your additional capacity beyond C<OnDemandBaseCapacity>.

Default if not set is 100. If you leave it set to 100, the percentages
are 100% for On-Demand Instances and 0% for Spot Instances.

An update to this setting means a gradual replacement of instances to
maintain the percentage of On-Demand Instances for your additional
capacity above the base capacity. When replacing instances, Amazon EC2
Auto Scaling launches new instances before terminating the old ones.

Valid Range: Minimum value of 0. Maximum value of 100.


=head2 SpotAllocationStrategy => Str

  Indicates how to allocate instances across Spot Instance pools.

If the allocation strategy is C<lowest-price>, the Auto Scaling group
launches instances using the Spot pools with the lowest price, and
evenly allocates your instances across the number of Spot pools that
you specify. If the allocation strategy is C<capacity-optimized>, the
Auto Scaling group launches instances using Spot pools that are
optimally chosen based on the available Spot capacity.

The default Spot allocation strategy for calls that you make through
the API, the AWS CLI, or the AWS SDKs is C<lowest-price>. The default
Spot allocation strategy for the AWS Management Console is
C<capacity-optimized>.

Valid values: C<lowest-price> | C<capacity-optimized>


=head2 SpotInstancePools => Int

  The number of Spot Instance pools across which to allocate your Spot
Instances. The Spot pools are determined from the different instance
types in the Overrides array of LaunchTemplate. Default if not set is
2.

Used only when the Spot allocation strategy is C<lowest-price>.

Valid Range: Minimum value of 1. Maximum value of 20.


=head2 SpotMaxPrice => Str

  The maximum price per unit hour that you are willing to pay for a Spot
Instance. If you leave the value of this parameter blank (which is the
default), the maximum Spot price is set at the On-Demand price.

To remove a value that you previously set, include the parameter but
leave the value blank.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

