package Paws::EC2::VpcCidrBlockAssociation;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', request_name => 'associationId', traits => ['NameInRequest']);
  has CidrBlock => (is => 'ro', isa => 'Str', request_name => 'cidrBlock', traits => ['NameInRequest']);
  has CidrBlockState => (is => 'ro', isa => 'Paws::EC2::VpcCidrBlockState', request_name => 'cidrBlockState', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpcCidrBlockAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpcCidrBlockAssociation object:

  $service_obj->Method(Att1 => { AssociationId => $value, ..., CidrBlockState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpcCidrBlockAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociationId => Str

  The association ID for the IPv4 CIDR block.


=head2 CidrBlock => Str

  The IPv4 CIDR block.


=head2 CidrBlockState => L<Paws::EC2::VpcCidrBlockState>

  Information about the state of the CIDR block.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
