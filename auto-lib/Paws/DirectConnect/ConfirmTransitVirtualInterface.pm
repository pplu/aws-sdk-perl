# Generated from json/callargs_class.tt

package Paws::DirectConnect::ConfirmTransitVirtualInterface;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DirectConnect::Types qw//;
  has DirectConnectGatewayId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has VirtualInterfaceId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ConfirmTransitVirtualInterface');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DirectConnect::ConfirmTransitVirtualInterfaceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DirectConnectGatewayId' => {
                                             'type' => 'Str'
                                           },
               'VirtualInterfaceId' => {
                                         'type' => 'Str'
                                       }
             },
  'IsRequired' => {
                    'VirtualInterfaceId' => 1,
                    'DirectConnectGatewayId' => 1
                  },
  'NameInRequest' => {
                       'VirtualInterfaceId' => 'virtualInterfaceId',
                       'DirectConnectGatewayId' => 'directConnectGatewayId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::ConfirmTransitVirtualInterface - Arguments for method ConfirmTransitVirtualInterface on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfirmTransitVirtualInterface on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method ConfirmTransitVirtualInterface.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConfirmTransitVirtualInterface.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $ConfirmTransitVirtualInterfaceResponse =
      $directconnect->ConfirmTransitVirtualInterface(
      DirectConnectGatewayId => 'MyDirectConnectGatewayId',
      VirtualInterfaceId     => 'MyVirtualInterfaceId',

      );

    # Results:
    my $VirtualInterfaceState =
      $ConfirmTransitVirtualInterfaceResponse->VirtualInterfaceState;

# Returns a L<Paws::DirectConnect::ConfirmTransitVirtualInterfaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/ConfirmTransitVirtualInterface>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectConnectGatewayId => Str

The ID of the Direct Connect gateway.



=head2 B<REQUIRED> VirtualInterfaceId => Str

The ID of the virtual interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConfirmTransitVirtualInterface in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

