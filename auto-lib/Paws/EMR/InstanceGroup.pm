package Paws::EMR::InstanceGroup;
  use Moose;
  has AutoScalingPolicy => (is => 'ro', isa => 'Paws::EMR::AutoScalingPolicyDescription');
  has BidPrice => (is => 'ro', isa => 'Str');
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Configuration]');
  has EbsBlockDevices => (is => 'ro', isa => 'ArrayRef[Paws::EMR::EbsBlockDevice]');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has Id => (is => 'ro', isa => 'Str');
  has InstanceGroupType => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has Market => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RequestedInstanceCount => (is => 'ro', isa => 'Int');
  has RunningInstanceCount => (is => 'ro', isa => 'Int');
  has ShrinkPolicy => (is => 'ro', isa => 'Paws::EMR::ShrinkPolicy');
  has Status => (is => 'ro', isa => 'Paws::EMR::InstanceGroupStatus');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::InstanceGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::InstanceGroup object:

  $service_obj->Method(Att1 => { AutoScalingPolicy => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::InstanceGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingPolicy

=head1 DESCRIPTION

This entity represents an instance group, which is a group of instances
that have common purpose. For example, CORE instance group is used for
HDFS.

=head1 ATTRIBUTES


=head2 AutoScalingPolicy => L<Paws::EMR::AutoScalingPolicyDescription>

  An automatic scaling policy for a core instance group or task instance
group in an Amazon EMR cluster. The automatic scaling policy defines
how an instance group dynamically adds and terminates EC2 instances in
response to the value of a CloudWatch metric. See PutAutoScalingPolicy.


=head2 BidPrice => Str

  The maximum Spot price your are willing to pay for EC2 instances.

An optional, nullable field that applies if the C<MarketType> for the
instance group is specified as C<SPOT>. Specify the maximum spot price
in USD. If the value is NULL and C<SPOT> is specified, the maximum Spot
price is set equal to the On-Demand price.


=head2 Configurations => ArrayRef[L<Paws::EMR::Configuration>]

  Amazon EMR releases 4.x or later.

The list of configurations supplied for an EMR cluster instance group.
You can specify a separate configuration for each instance group
(master, core, and task).


=head2 EbsBlockDevices => ArrayRef[L<Paws::EMR::EbsBlockDevice>]

  The EBS block devices that are mapped to this instance group.


=head2 EbsOptimized => Bool

  If the instance group is EBS-optimized. An Amazon EBS-optimized
instance uses an optimized configuration stack and provides additional,
dedicated capacity for Amazon EBS I/O.


=head2 Id => Str

  The identifier of the instance group.


=head2 InstanceGroupType => Str

  The type of the instance group. Valid values are MASTER, CORE or TASK.


=head2 InstanceType => Str

  The EC2 instance type for all instances in the instance group.


=head2 Market => Str

  The marketplace to provision instances for this group. Valid values are
ON_DEMAND or SPOT.


=head2 Name => Str

  The name of the instance group.


=head2 RequestedInstanceCount => Int

  The target number of instances for the instance group.


=head2 RunningInstanceCount => Int

  The number of instances currently running in this instance group.


=head2 ShrinkPolicy => L<Paws::EMR::ShrinkPolicy>

  Policy for customizing shrink operations.


=head2 Status => L<Paws::EMR::InstanceGroupStatus>

  The current status of the instance group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

