package Paws::EC2::SpotFleetRequestConfigData;
  use Moose;
  has AllocationStrategy => (is => 'ro', isa => 'Str', request_name => 'allocationStrategy', traits => ['NameInRequest']);
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest']);
  has ExcessCapacityTerminationPolicy => (is => 'ro', isa => 'Str', request_name => 'excessCapacityTerminationPolicy', traits => ['NameInRequest']);
  has FulfilledCapacity => (is => 'ro', isa => 'Num', request_name => 'fulfilledCapacity', traits => ['NameInRequest']);
  has IamFleetRole => (is => 'ro', isa => 'Str', request_name => 'iamFleetRole', traits => ['NameInRequest'], required => 1);
  has InstanceInterruptionBehavior => (is => 'ro', isa => 'Str', request_name => 'instanceInterruptionBehavior', traits => ['NameInRequest']);
  has InstancePoolsToUseCount => (is => 'ro', isa => 'Int', request_name => 'instancePoolsToUseCount', traits => ['NameInRequest']);
  has LaunchSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SpotFleetLaunchSpecification]', request_name => 'launchSpecifications', traits => ['NameInRequest']);
  has LaunchTemplateConfigs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchTemplateConfig]', request_name => 'launchTemplateConfigs', traits => ['NameInRequest']);
  has LoadBalancersConfig => (is => 'ro', isa => 'Paws::EC2::LoadBalancersConfig', request_name => 'loadBalancersConfig', traits => ['NameInRequest']);
  has OnDemandAllocationStrategy => (is => 'ro', isa => 'Str', request_name => 'onDemandAllocationStrategy', traits => ['NameInRequest']);
  has OnDemandFulfilledCapacity => (is => 'ro', isa => 'Num', request_name => 'onDemandFulfilledCapacity', traits => ['NameInRequest']);
  has OnDemandTargetCapacity => (is => 'ro', isa => 'Int', request_name => 'onDemandTargetCapacity', traits => ['NameInRequest']);
  has ReplaceUnhealthyInstances => (is => 'ro', isa => 'Bool', request_name => 'replaceUnhealthyInstances', traits => ['NameInRequest']);
  has SpotPrice => (is => 'ro', isa => 'Str', request_name => 'spotPrice', traits => ['NameInRequest']);
  has TargetCapacity => (is => 'ro', isa => 'Int', request_name => 'targetCapacity', traits => ['NameInRequest'], required => 1);
  has TerminateInstancesWithExpiration => (is => 'ro', isa => 'Bool', request_name => 'terminateInstancesWithExpiration', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has ValidFrom => (is => 'ro', isa => 'Str', request_name => 'validFrom', traits => ['NameInRequest']);
  has ValidUntil => (is => 'ro', isa => 'Str', request_name => 'validUntil', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SpotFleetRequestConfigData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SpotFleetRequestConfigData object:

  $service_obj->Method(Att1 => { AllocationStrategy => $value, ..., ValidUntil => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SpotFleetRequestConfigData object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocationStrategy

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllocationStrategy => Str

  Indicates how to allocate the target capacity across the Spot pools
specified by the Spot Fleet request. The default is C<lowestPrice>.


=head2 ClientToken => Str

  A unique, case-sensitive identifier that you provide to ensure the
idempotency of your listings. This helps to avoid duplicate listings.
For more information, see Ensuring Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


=head2 ExcessCapacityTerminationPolicy => Str

  Indicates whether running Spot Instances should be terminated if the
target capacity of the Spot Fleet request is decreased below the
current size of the Spot Fleet.


=head2 FulfilledCapacity => Num

  The number of units fulfilled by this request compared to the set
target capacity. You cannot set this value.


=head2 B<REQUIRED> IamFleetRole => Str

  Grants the Spot Fleet permission to terminate Spot Instances on your
behalf when you cancel its Spot Fleet request using
CancelSpotFleetRequests or when the Spot Fleet request expires, if you
set C<terminateInstancesWithExpiration>.


=head2 InstanceInterruptionBehavior => Str

  The behavior when a Spot Instance is interrupted. The default is
C<terminate>.


=head2 InstancePoolsToUseCount => Int

  The number of Spot pools across which to allocate your target Spot
capacity. Valid only when Spot B<AllocationStrategy> is set to
C<lowest-price>. Spot Fleet selects the cheapest Spot pools and evenly
allocates your target Spot capacity across the number of Spot pools
that you specify.


=head2 LaunchSpecifications => ArrayRef[L<Paws::EC2::SpotFleetLaunchSpecification>]

  The launch specifications for the Spot Fleet request.


=head2 LaunchTemplateConfigs => ArrayRef[L<Paws::EC2::LaunchTemplateConfig>]

  The launch template and overrides.


=head2 LoadBalancersConfig => L<Paws::EC2::LoadBalancersConfig>

  One or more Classic Load Balancers and target groups to attach to the
Spot Fleet request. Spot Fleet registers the running Spot Instances
with the specified Classic Load Balancers and target groups.

With Network Load Balancers, Spot Fleet cannot register instances that
have the following instance types: C1, CC1, CC2, CG1, CG2, CR1, CS1,
G1, G2, HI1, HS1, M1, M2, M3, and T1.


=head2 OnDemandAllocationStrategy => Str

  The order of the launch template overrides to use in fulfilling
On-Demand capacity. If you specify C<lowestPrice>, Spot Fleet uses
price to determine the order, launching the lowest price first. If you
specify C<prioritized>, Spot Fleet uses the priority that you assign to
each Spot Fleet launch template override, launching the highest
priority first. If you do not specify a value, Spot Fleet defaults to
C<lowestPrice>.


=head2 OnDemandFulfilledCapacity => Num

  The number of On-Demand units fulfilled by this request compared to the
set target On-Demand capacity.


=head2 OnDemandTargetCapacity => Int

  The number of On-Demand units to request. You can choose to set the
target capacity in terms of instances or a performance characteristic
that is important to your application workload, such as vCPUs, memory,
or I/O. If the request type is C<maintain>, you can specify a target
capacity of 0 and add capacity later.


=head2 ReplaceUnhealthyInstances => Bool

  Indicates whether Spot Fleet should replace unhealthy instances.


=head2 SpotPrice => Str

  The maximum price per unit hour that you are willing to pay for a Spot
Instance. The default is the On-Demand price.


=head2 B<REQUIRED> TargetCapacity => Int

  The number of units to request. You can choose to set the target
capacity in terms of instances or a performance characteristic that is
important to your application workload, such as vCPUs, memory, or I/O.
If the request type is C<maintain>, you can specify a target capacity
of 0 and add capacity later.


=head2 TerminateInstancesWithExpiration => Bool

  Indicates whether running Spot Instances should be terminated when the
Spot Fleet request expires.


=head2 Type => Str

  The type of request. Indicates whether the Spot Fleet only requests the
target capacity or also attempts to maintain it. When this value is
C<request>, the Spot Fleet only places the required requests. It does
not attempt to replenish Spot Instances if capacity is diminished, nor
does it submit requests in alternative Spot pools if capacity is not
available. When this value is C<maintain>, the Spot Fleet maintains the
target capacity. The Spot Fleet places the required requests to meet
capacity and automatically replenishes any interrupted instances.
Default: C<maintain>. C<instant> is listed but is not used by Spot
Fleet.


=head2 ValidFrom => Str

  The start date and time of the request, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). The default is to start
fulfilling the request immediately.


=head2 ValidUntil => Str

  The end date and time of the request, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). At this point, no new Spot
Instance requests are placed or able to fulfill the request. The
default end date is 7 days from the current date.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
