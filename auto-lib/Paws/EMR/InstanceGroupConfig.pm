package Paws::EMR::InstanceGroupConfig;
  use Moose;
  has BidPrice => (is => 'ro', isa => 'Str');
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Configuration]');
  has EbsConfiguration => (is => 'ro', isa => 'Paws::EMR::EbsConfiguration');
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceRole => (is => 'ro', isa => 'Str', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has Market => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::InstanceGroupConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::InstanceGroupConfig object:

  $service_obj->Method(Att1 => { BidPrice => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::InstanceGroupConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->BidPrice

=head1 DESCRIPTION

Configuration defining a new instance group.

=head1 ATTRIBUTES


=head2 BidPrice => Str

  Bid price for each Amazon EC2 instance in the instance group when
launching nodes as Spot Instances, expressed in USD.


=head2 Configurations => ArrayRef[L<Paws::EMR::Configuration>]

  Amazon EMR releases 4.x or later.

The list of configurations supplied for an EMR cluster instance group.
You can specify a separate configuration for each instance group
(master, core, and task).


=head2 EbsConfiguration => L<Paws::EMR::EbsConfiguration>

  EBS configurations that will be attached to each Amazon EC2 instance in
the instance group.


=head2 B<REQUIRED> InstanceCount => Int

  Target number of instances for the instance group.


=head2 B<REQUIRED> InstanceRole => Str

  The role of the instance group in the cluster.


=head2 B<REQUIRED> InstanceType => Str

  The Amazon EC2 instance type for all instances in the instance group.


=head2 Market => Str

  Market type of the Amazon EC2 instances used to create a cluster node.


=head2 Name => Str

  Friendly name given to the instance group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

