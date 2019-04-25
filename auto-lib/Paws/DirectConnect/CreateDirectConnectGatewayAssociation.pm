
package Paws::DirectConnect::CreateDirectConnectGatewayAssociation;
  use Moose;
  has DirectConnectGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'directConnectGatewayId' , required => 1);
  has VirtualGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualGatewayId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDirectConnectGatewayAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::CreateDirectConnectGatewayAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreateDirectConnectGatewayAssociation - Arguments for method CreateDirectConnectGatewayAssociation on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDirectConnectGatewayAssociation on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method CreateDirectConnectGatewayAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDirectConnectGatewayAssociation.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $CreateDirectConnectGatewayAssociationResult =
      $directconnect->CreateDirectConnectGatewayAssociation(
      DirectConnectGatewayId => 'MyDirectConnectGatewayId',
      VirtualGatewayId       => 'MyVirtualGatewayId',

      );

    # Results:
    my $DirectConnectGatewayAssociation =
      $CreateDirectConnectGatewayAssociationResult
      ->DirectConnectGatewayAssociation;

# Returns a L<Paws::DirectConnect::CreateDirectConnectGatewayAssociationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/CreateDirectConnectGatewayAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectConnectGatewayId => Str

The ID of the Direct Connect gateway.



=head2 B<REQUIRED> VirtualGatewayId => Str

The ID of the virtual private gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDirectConnectGatewayAssociation in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

