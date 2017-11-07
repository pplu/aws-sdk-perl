package Paws::EC2::SpotFleetRequestConfigData;
  use Moose;
  has AllocationStrategy => (is => 'ro', isa => 'Str', request_name => 'allocationStrategy', traits => ['NameInRequest']);
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest']);
  has ExcessCapacityTerminationPolicy => (is => 'ro', isa => 'Str', request_name => 'excessCapacityTerminationPolicy', traits => ['NameInRequest']);
  has FulfilledCapacity => (is => 'ro', isa => 'Num', request_name => 'fulfilledCapacity', traits => ['NameInRequest']);
  has IamFleetRole => (is => 'ro', isa => 'Str', request_name => 'iamFleetRole', traits => ['NameInRequest'], required => 1);
  has InstanceInterruptionBehavior => (is => 'ro', isa => 'Str', request_name => 'instanceInterruptionBehavior', traits => ['NameInRequest']);
  has LaunchSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SpotFleetLaunchSpecification]', request_name => 'launchSpecifications', traits => ['NameInRequest'], required => 1);
  has ReplaceUnhealthyInstances => (is => 'ro', isa => 'Bool', request_name => 'replaceUnhealthyInstances', traits => ['NameInRequest']);
  has SpotPrice => (is => 'ro', isa => 'Str', request_name => 'spotPrice', traits => ['NameInRequest'], required => 1);
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
specified by the Spot fleet request. The default is C<lowestPrice>.


=head2 ClientToken => Str

  A unique, case-sensitive identifier you provide to ensure idempotency
of your listings. This helps avoid duplicate listings. For more
information, see Ensuring Idempotency.


=head2 ExcessCapacityTerminationPolicy => Str

  Indicates whether running Spot instances should be terminated if the
target capacity of the Spot fleet request is decreased below the
current size of the Spot fleet.


=head2 FulfilledCapacity => Num

  The number of units fulfilled by this request compared to the set
target capacity.


=head2 B<REQUIRED> IamFleetRole => Str

  Grants the Spot fleet permission to terminate Spot instances on your
behalf when you cancel its Spot fleet request using
CancelSpotFleetRequests or when the Spot fleet request expires, if you
set C<terminateInstancesWithExpiration>.


=head2 InstanceInterruptionBehavior => Str

  Indicates whether a Spot instance stops or terminates when it is
interrupted.


=head2 B<REQUIRED> LaunchSpecifications => ArrayRef[L<Paws::EC2::SpotFleetLaunchSpecification>]

  Information about the launch specifications for the Spot fleet request.


=head2 ReplaceUnhealthyInstances => Bool

  Indicates whether Spot fleet should replace unhealthy instances.


=head2 B<REQUIRED> SpotPrice => Str

  The bid price per unit hour.


=head2 B<REQUIRED> TargetCapacity => Int

  The number of units to request. You can choose to set the target
capacity in terms of instances or a performance characteristic that is
important to your application workload, such as vCPUs, memory, or I/O.


=head2 TerminateInstancesWithExpiration => Bool

  Indicates whether running Spot instances should be terminated when the
Spot fleet request expires.


=head2 Type => Str

  The type of request. Indicates whether the fleet will only C<request>
the target capacity or also attempt to C<maintain> it. When you
C<request> a certain target capacity, the fleet will only place the
required bids. It will not attempt to replenish Spot instances if
capacity is diminished, nor will it submit bids in alternative Spot
pools if capacity is not available. When you want to C<maintain> a
certain target capacity, fleet will place the required bids to meet
this target capacity. It will also automatically replenish any
interrupted instances. Default: C<maintain>.


=head2 ValidFrom => Str

  The start date and time of the request, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). The default is to start
fulfilling the request immediately.


=head2 ValidUntil => Str

  The end date and time of the request, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). At this point, no new Spot
instance requests are placed or enabled to fulfill the request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
