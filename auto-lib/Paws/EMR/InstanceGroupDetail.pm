package Paws::EMR::InstanceGroupDetail;
  use Moose;
  has BidPrice => (is => 'ro', isa => 'Str');
  has CreationDateTime => (is => 'ro', isa => 'Str', required => 1);
  has EndDateTime => (is => 'ro', isa => 'Str');
  has InstanceGroupId => (is => 'ro', isa => 'Str');
  has InstanceRequestCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceRole => (is => 'ro', isa => 'Str', required => 1);
  has InstanceRunningCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has LastStateChangeReason => (is => 'ro', isa => 'Str');
  has Market => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has ReadyDateTime => (is => 'ro', isa => 'Str');
  has StartDateTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::InstanceGroupDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::InstanceGroupDetail object:

  $service_obj->Method(Att1 => { BidPrice => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::InstanceGroupDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->BidPrice

=head1 DESCRIPTION

Detailed information about an instance group.

=head1 ATTRIBUTES


=head2 BidPrice => Str

  The maximum Spot price your are willing to pay for EC2 instances.

An optional, nullable field that applies if the C<MarketType> for the
instance group is specified as C<SPOT>. Specified in USD. If the value
is NULL and C<SPOT> is specified, the maximum Spot price is set equal
to the On-Demand price.


=head2 B<REQUIRED> CreationDateTime => Str

  The date/time the instance group was created.


=head2 EndDateTime => Str

  The date/time the instance group was terminated.


=head2 InstanceGroupId => Str

  Unique identifier for the instance group.


=head2 B<REQUIRED> InstanceRequestCount => Int

  Target number of instances to run in the instance group.


=head2 B<REQUIRED> InstanceRole => Str

  Instance group role in the cluster


=head2 B<REQUIRED> InstanceRunningCount => Int

  Actual count of running instances.


=head2 B<REQUIRED> InstanceType => Str

  EC2 instance type.


=head2 LastStateChangeReason => Str

  Details regarding the state of the instance group.


=head2 B<REQUIRED> Market => Str

  Market type of the EC2 instances used to create a cluster node.


=head2 Name => Str

  Friendly name for the instance group.


=head2 ReadyDateTime => Str

  The date/time the instance group was available to the cluster.


=head2 StartDateTime => Str

  The date/time the instance group was started.


=head2 B<REQUIRED> State => Str

  State of instance group. The following values are deprecated: STARTING,
TERMINATED, and FAILED.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

