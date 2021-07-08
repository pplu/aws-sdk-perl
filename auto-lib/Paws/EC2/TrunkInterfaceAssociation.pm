package Paws::EC2::TrunkInterfaceAssociation;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', request_name => 'associationId', traits => ['NameInRequest']);
  has BranchInterfaceId => (is => 'ro', isa => 'Str', request_name => 'branchInterfaceId', traits => ['NameInRequest']);
  has GreKey => (is => 'ro', isa => 'Int', request_name => 'greKey', traits => ['NameInRequest']);
  has InterfaceProtocol => (is => 'ro', isa => 'Str', request_name => 'interfaceProtocol', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TrunkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'trunkInterfaceId', traits => ['NameInRequest']);
  has VlanId => (is => 'ro', isa => 'Int', request_name => 'vlanId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TrunkInterfaceAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TrunkInterfaceAssociation object:

  $service_obj->Method(Att1 => { AssociationId => $value, ..., VlanId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TrunkInterfaceAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociationId => Str

The ID of the association.


=head2 BranchInterfaceId => Str

The ID of the branch network interface.


=head2 GreKey => Int

The application key when you use the GRE protocol.


=head2 InterfaceProtocol => Str

The interface protocol. Valid values are C<VLAN> and C<GRE>.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags.


=head2 TrunkInterfaceId => Str

The ID of the trunk network interface.


=head2 VlanId => Int

The ID of the VLAN when you use the VLAN protocol.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
