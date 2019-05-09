package Paws::ManagedBlockchain::Node;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has FrameworkAttributes => (is => 'ro', isa => 'Paws::ManagedBlockchain::NodeFrameworkAttributes');
  has Id => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has MemberId => (is => 'ro', isa => 'Str');
  has NetworkId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::Node

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::Node object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::Node object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

Configuration properties of a peer node.

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone in which the node exists.


=head2 CreationDate => Str

  The date and time that the node was created.


=head2 FrameworkAttributes => L<Paws::ManagedBlockchain::NodeFrameworkAttributes>

  Attributes of the blockchain framework being used.


=head2 Id => Str

  The unique identifier of the node.


=head2 InstanceType => Str

  The instance type of the node.


=head2 MemberId => Str

  The unique identifier of the member to which the node belongs.


=head2 NetworkId => Str

  The unique identifier of the network that the node is in.


=head2 Status => Str

  The status of the node.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

