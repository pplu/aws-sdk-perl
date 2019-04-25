
package Paws::EC2::DisassociateSubnetCidrBlock;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'associationId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateSubnetCidrBlock');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DisassociateSubnetCidrBlockResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisassociateSubnetCidrBlock - Arguments for method DisassociateSubnetCidrBlock on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateSubnetCidrBlock on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DisassociateSubnetCidrBlock.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateSubnetCidrBlock.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DisassociateSubnetCidrBlockResult = $ec2->DisassociateSubnetCidrBlock(
      AssociationId => 'MyString',

    );

    # Results:
    my $Ipv6CidrBlockAssociation =
      $DisassociateSubnetCidrBlockResult->Ipv6CidrBlockAssociation;
    my $SubnetId = $DisassociateSubnetCidrBlockResult->SubnetId;

    # Returns a L<Paws::EC2::DisassociateSubnetCidrBlockResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DisassociateSubnetCidrBlock>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationId => Str

The association ID for the CIDR block.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateSubnetCidrBlock in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

