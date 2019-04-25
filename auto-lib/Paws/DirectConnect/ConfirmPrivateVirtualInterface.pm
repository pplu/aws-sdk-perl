
package Paws::DirectConnect::ConfirmPrivateVirtualInterface;
  use Moose;
  has DirectConnectGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'directConnectGatewayId' );
  has VirtualGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualGatewayId' );
  has VirtualInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmPrivateVirtualInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::ConfirmPrivateVirtualInterfaceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::ConfirmPrivateVirtualInterface - Arguments for method ConfirmPrivateVirtualInterface on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfirmPrivateVirtualInterface on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method ConfirmPrivateVirtualInterface.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConfirmPrivateVirtualInterface.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $ConfirmPrivateVirtualInterfaceResponse =
      $directconnect->ConfirmPrivateVirtualInterface(
      VirtualInterfaceId     => 'MyVirtualInterfaceId',
      DirectConnectGatewayId => 'MyDirectConnectGatewayId',    # OPTIONAL
      VirtualGatewayId       => 'MyVirtualGatewayId',          # OPTIONAL
      );

    # Results:
    my $VirtualInterfaceState =
      $ConfirmPrivateVirtualInterfaceResponse->VirtualInterfaceState;

# Returns a L<Paws::DirectConnect::ConfirmPrivateVirtualInterfaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/ConfirmPrivateVirtualInterface>

=head1 ATTRIBUTES


=head2 DirectConnectGatewayId => Str

The ID of the Direct Connect gateway.



=head2 VirtualGatewayId => Str

The ID of the virtual private gateway.



=head2 B<REQUIRED> VirtualInterfaceId => Str

The ID of the virtual interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConfirmPrivateVirtualInterface in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

