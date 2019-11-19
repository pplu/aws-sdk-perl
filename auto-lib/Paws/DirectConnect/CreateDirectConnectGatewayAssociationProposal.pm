# Generated from json/callargs_class.tt

package Paws::DirectConnect::CreateDirectConnectGatewayAssociationProposal;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_RouteFilterPrefix/;
  has AddAllowedPrefixesToDirectConnectGateway => (is => 'ro', isa => ArrayRef[DirectConnect_RouteFilterPrefix], predicate => 1);
  has DirectConnectGatewayId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DirectConnectGatewayOwnerAccount => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has GatewayId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RemoveAllowedPrefixesToDirectConnectGateway => (is => 'ro', isa => ArrayRef[DirectConnect_RouteFilterPrefix], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDirectConnectGatewayAssociationProposal');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DirectConnect::CreateDirectConnectGatewayAssociationProposalResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GatewayId' => {
                                'type' => 'Str'
                              },
               'AddAllowedPrefixesToDirectConnectGateway' => {
                                                               'type' => 'ArrayRef[DirectConnect_RouteFilterPrefix]',
                                                               'class' => 'Paws::DirectConnect::RouteFilterPrefix'
                                                             },
               'DirectConnectGatewayOwnerAccount' => {
                                                       'type' => 'Str'
                                                     },
               'RemoveAllowedPrefixesToDirectConnectGateway' => {
                                                                  'type' => 'ArrayRef[DirectConnect_RouteFilterPrefix]',
                                                                  'class' => 'Paws::DirectConnect::RouteFilterPrefix'
                                                                },
               'DirectConnectGatewayId' => {
                                             'type' => 'Str'
                                           }
             },
  'IsRequired' => {
                    'DirectConnectGatewayOwnerAccount' => 1,
                    'GatewayId' => 1,
                    'DirectConnectGatewayId' => 1
                  },
  'NameInRequest' => {
                       'AddAllowedPrefixesToDirectConnectGateway' => 'addAllowedPrefixesToDirectConnectGateway',
                       'GatewayId' => 'gatewayId',
                       'DirectConnectGatewayOwnerAccount' => 'directConnectGatewayOwnerAccount',
                       'RemoveAllowedPrefixesToDirectConnectGateway' => 'removeAllowedPrefixesToDirectConnectGateway',
                       'DirectConnectGatewayId' => 'directConnectGatewayId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreateDirectConnectGatewayAssociationProposal - Arguments for method CreateDirectConnectGatewayAssociationProposal on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDirectConnectGatewayAssociationProposal on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method CreateDirectConnectGatewayAssociationProposal.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDirectConnectGatewayAssociationProposal.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $CreateDirectConnectGatewayAssociationProposalResult =
      $directconnect->CreateDirectConnectGatewayAssociationProposal(
      DirectConnectGatewayId                   => 'MyDirectConnectGatewayId',
      DirectConnectGatewayOwnerAccount         => 'MyOwnerAccount',
      GatewayId                                => 'MyGatewayIdToAssociate',
      AddAllowedPrefixesToDirectConnectGateway => [
        {
          Cidr => 'MyCIDR',    # OPTIONAL
        },
        ...
      ],                       # OPTIONAL
      RemoveAllowedPrefixesToDirectConnectGateway => [
        {
          Cidr => 'MyCIDR',    # OPTIONAL
        },
        ...
      ],                       # OPTIONAL
      );

    # Results:
    my $DirectConnectGatewayAssociationProposal =
      $CreateDirectConnectGatewayAssociationProposalResult
      ->DirectConnectGatewayAssociationProposal;

# Returns a L<Paws::DirectConnect::CreateDirectConnectGatewayAssociationProposalResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/CreateDirectConnectGatewayAssociationProposal>

=head1 ATTRIBUTES


=head2 AddAllowedPrefixesToDirectConnectGateway => ArrayRef[DirectConnect_RouteFilterPrefix]

The Amazon VPC prefixes to advertise to the Direct Connect gateway.



=head2 B<REQUIRED> DirectConnectGatewayId => Str

The ID of the Direct Connect gateway.



=head2 B<REQUIRED> DirectConnectGatewayOwnerAccount => Str

The ID of the AWS account that owns the Direct Connect gateway.



=head2 B<REQUIRED> GatewayId => Str

The ID of the virtual private gateway or transit gateway.



=head2 RemoveAllowedPrefixesToDirectConnectGateway => ArrayRef[DirectConnect_RouteFilterPrefix]

The Amazon VPC prefixes to no longer advertise to the Direct Connect
gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDirectConnectGatewayAssociationProposal in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

