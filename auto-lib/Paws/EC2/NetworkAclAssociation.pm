package Paws::EC2::NetworkAclAssociation;
  use Moose;
  has NetworkAclAssociationId => (is => 'ro', isa => 'Str', request_name => 'networkAclAssociationId', traits => ['NameInRequest']);
  has NetworkAclId => (is => 'ro', isa => 'Str', request_name => 'networkAclId', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NetworkAclAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NetworkAclAssociation object:

  $service_obj->Method(Att1 => { NetworkAclAssociationId => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NetworkAclAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->NetworkAclAssociationId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 NetworkAclAssociationId => Str

  The ID of the association between a network ACL and a subnet.


=head2 NetworkAclId => Str

  The ID of the network ACL.


=head2 SubnetId => Str

  The ID of the subnet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
