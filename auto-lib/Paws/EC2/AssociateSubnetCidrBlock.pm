
package Paws::EC2::AssociateSubnetCidrBlock;
  use Moose;
  has Ipv6CidrBlock => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ipv6CidrBlock' , required => 1);
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subnetId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateSubnetCidrBlock');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AssociateSubnetCidrBlockResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateSubnetCidrBlock - Arguments for method AssociateSubnetCidrBlock on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateSubnetCidrBlock on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AssociateSubnetCidrBlock.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateSubnetCidrBlock.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $AssociateSubnetCidrBlockResult = $ec2->AssociateSubnetCidrBlock(
      Ipv6CidrBlock => 'MyString',
      SubnetId      => 'MyString',

    );

    # Results:
    my $Ipv6CidrBlockAssociation =
      $AssociateSubnetCidrBlockResult->Ipv6CidrBlockAssociation;
    my $SubnetId = $AssociateSubnetCidrBlockResult->SubnetId;

    # Returns a L<Paws::EC2::AssociateSubnetCidrBlockResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AssociateSubnetCidrBlock>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Ipv6CidrBlock => Str

The IPv6 CIDR block for your subnet. The subnet must have a /64 prefix
length.



=head2 B<REQUIRED> SubnetId => Str

The ID of your subnet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateSubnetCidrBlock in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

