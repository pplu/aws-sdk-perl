
package Paws::EC2::AssociateVpcCidrBlock;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::EC2::Types qw//;
  has AmazonProvidedIpv6CidrBlock => (is => 'ro', isa => Bool, predicate => 1);
  has CidrBlock => (is => 'ro', isa => Str, predicate => 1);
  has VpcId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AssociateVpcCidrBlock');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::AssociateVpcCidrBlockResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'AmazonProvidedIpv6CidrBlock' => 'amazonProvidedIpv6CidrBlock',
                       'VpcId' => 'vpcId'
                     },
  'IsRequired' => {
                    'VpcId' => 1
                  },
  'types' => {
               'CidrBlock' => {
                                'type' => 'Str'
                              },
               'AmazonProvidedIpv6CidrBlock' => {
                                                  'type' => 'Bool'
                                                },
               'VpcId' => {
                            'type' => 'Str'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateVpcCidrBlock - Arguments for method AssociateVpcCidrBlock on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateVpcCidrBlock on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AssociateVpcCidrBlock.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateVpcCidrBlock.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $AssociateVpcCidrBlockResult = $ec2->AssociateVpcCidrBlock(
      VpcId                       => 'MyVpcId',
      AmazonProvidedIpv6CidrBlock => 1,             # OPTIONAL
      CidrBlock                   => 'MyString',    # OPTIONAL
    );

    # Results:
    my $CidrBlockAssociation =
      $AssociateVpcCidrBlockResult->CidrBlockAssociation;
    my $Ipv6CidrBlockAssociation =
      $AssociateVpcCidrBlockResult->Ipv6CidrBlockAssociation;
    my $VpcId = $AssociateVpcCidrBlockResult->VpcId;

    # Returns a L<Paws::EC2::AssociateVpcCidrBlockResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AssociateVpcCidrBlock>

=head1 ATTRIBUTES


=head2 AmazonProvidedIpv6CidrBlock => Bool

Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length
for the VPC. You cannot specify the range of IPv6 addresses, or the
size of the CIDR block.



=head2 CidrBlock => Str

An IPv4 CIDR block to associate with the VPC.



=head2 B<REQUIRED> VpcId => Str

The ID of the VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateVpcCidrBlock in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

