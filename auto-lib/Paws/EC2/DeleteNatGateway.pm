
package Paws::EC2::DeleteNatGateway;
  use Moose;
  has NatGatewayId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNatGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DeleteNatGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteNatGateway - Arguments for method DeleteNatGateway on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteNatGateway on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DeleteNatGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteNatGateway.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To delete a NAT gateway
    # This example deletes the specified NAT gateway.
    my $DeleteNatGatewayResult = $ec2->DeleteNatGateway(
      {
        'NatGatewayId' => 'nat-04ae55e711cec5680'
      }
    );

    # Results:
    my $NatGatewayId = $DeleteNatGatewayResult->NatGatewayId;

    # Returns a L<Paws::EC2::DeleteNatGatewayResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DeleteNatGateway>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NatGatewayId => Str

The ID of the NAT gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteNatGateway in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

