
package Paws::EC2::ModifyVpcAttribute;
  use Moose;
  has EnableDnsHostnames => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue');
  has EnableDnsSupport => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVpcAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVpcAttribute - Arguments for method ModifyVpcAttribute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyVpcAttribute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyVpcAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyVpcAttribute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To modify the enableDnsSupport attribute
    # This example modifies the enableDnsSupport attribute. This attribute
    # indicates whether DNS resolution is enabled for the VPC. If this attribute
    # is true, the Amazon DNS server resolves DNS hostnames for instances in the
    # VPC to their corresponding IP addresses; otherwise, it does not.
    $ec2->ModifyVpcAttribute(
      {
        'EnableDnsSupport' => {
          'Value' => 0
        },
        'VpcId' => 'vpc-a01106c2'
      }
    );

    # To modify the enableDnsHostnames attribute
    # This example modifies the enableDnsHostnames attribute. This attribute
    # indicates whether instances launched in the VPC get DNS hostnames. If this
    # attribute is true, instances in the VPC get DNS hostnames; otherwise, they
    # do not.
    $ec2->ModifyVpcAttribute(
      {
        'EnableDnsHostnames' => {
          'Value' => 0
        },
        'VpcId' => 'vpc-a01106c2'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyVpcAttribute>

=head1 ATTRIBUTES


=head2 EnableDnsHostnames => L<Paws::EC2::AttributeBooleanValue>

Indicates whether the instances launched in the VPC get DNS hostnames.
If enabled, instances in the VPC get DNS hostnames; otherwise, they do
not.

You cannot modify the DNS resolution and DNS hostnames attributes in
the same request. Use separate requests for each attribute. You can
only enable DNS hostnames if you've enabled DNS support.



=head2 EnableDnsSupport => L<Paws::EC2::AttributeBooleanValue>

Indicates whether the DNS resolution is supported for the VPC. If
enabled, queries to the Amazon provided DNS server at the
169.254.169.253 IP address, or the reserved IP address at the base of
the VPC network range "plus two" succeed. If disabled, the Amazon
provided DNS service in the VPC that resolves public DNS hostnames to
IP addresses is not enabled.

You cannot modify the DNS resolution and DNS hostnames attributes in
the same request. Use separate requests for each attribute.



=head2 B<REQUIRED> VpcId => Str

The ID of the VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyVpcAttribute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

