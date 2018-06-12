
package Paws::DirectConnect::DescribeDirectConnectGatewayAssociations;
  use Moose;
  has DirectConnectGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'directConnectGatewayId' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has VirtualGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualGatewayId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDirectConnectGatewayAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::DescribeDirectConnectGatewayAssociationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeDirectConnectGatewayAssociations - Arguments for method DescribeDirectConnectGatewayAssociations on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDirectConnectGatewayAssociations on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method DescribeDirectConnectGatewayAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDirectConnectGatewayAssociations.

As an example:

  $service_obj->DescribeDirectConnectGatewayAssociations(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/DescribeDirectConnectGatewayAssociations>

=head1 ATTRIBUTES


=head2 DirectConnectGatewayId => Str

The ID of the direct connect gateway.

Example: "abcd1234-dcba-5678-be23-cdef9876ab45"

Default: None



=head2 MaxResults => Int

The maximum number of direct connect gateway associations to return per
page.

Example: 15

Default: None



=head2 NextToken => Str

The token provided in the previous describe result to retrieve the next
page of the result.

Default: None



=head2 VirtualGatewayId => Str

The ID of the virtual private gateway.

Example: "vgw-abc123ef"

Default: None




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDirectConnectGatewayAssociations in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

