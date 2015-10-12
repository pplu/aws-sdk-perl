package Paws::EMR::InstanceGroup;
  use Moose;
  has BidPrice => (is => 'ro', isa => 'Str');
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Configuration]');
  has Id => (is => 'ro', isa => 'Str');
  has InstanceGroupType => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has Market => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RequestedInstanceCount => (is => 'ro', isa => 'Int');
  has RunningInstanceCount => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Paws::EMR::InstanceGroupStatus');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::InstanceGroup

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::InstanceGroup object:

  $service_obj->Method(Att1 => { BidPrice => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::InstanceGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->BidPrice

=head1 ATTRIBUTES

=head2 BidPrice => Str

  The bid price for each EC2 instance in the instance group when
launching nodes as Spot Instances, expressed in USD.

=head2 Configurations => ArrayRef[L<Paws::EMR::Configuration>]

  Amazon EMR releases 4.x or later.

The list of configurations supplied for an EMR cluster instance group.
You can specify a separate configuration for each instance group
(master, core, and task).

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

=head2 Status => L<Paws::EMR::InstanceGroupStatus>

  The current status of the instance group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

