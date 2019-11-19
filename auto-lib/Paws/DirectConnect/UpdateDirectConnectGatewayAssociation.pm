# Generated from json/callargs_class.tt

package Paws::DirectConnect::UpdateDirectConnectGatewayAssociation;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_RouteFilterPrefix/;
  has AddAllowedPrefixesToDirectConnectGateway => (is => 'ro', isa => ArrayRef[DirectConnect_RouteFilterPrefix], predicate => 1);
  has AssociationId => (is => 'ro', isa => Str, predicate => 1);
  has RemoveAllowedPrefixesToDirectConnectGateway => (is => 'ro', isa => ArrayRef[DirectConnect_RouteFilterPrefix], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateDirectConnectGatewayAssociation');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DirectConnect::UpdateDirectConnectGatewayAssociationResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AssociationId' => {
                                    'type' => 'Str'
                                  },
               'RemoveAllowedPrefixesToDirectConnectGateway' => {
                                                                  'type' => 'ArrayRef[DirectConnect_RouteFilterPrefix]',
                                                                  'class' => 'Paws::DirectConnect::RouteFilterPrefix'
                                                                },
               'AddAllowedPrefixesToDirectConnectGateway' => {
                                                               'type' => 'ArrayRef[DirectConnect_RouteFilterPrefix]',
                                                               'class' => 'Paws::DirectConnect::RouteFilterPrefix'
                                                             }
             },
  'NameInRequest' => {
                       'AssociationId' => 'associationId',
                       'AddAllowedPrefixesToDirectConnectGateway' => 'addAllowedPrefixesToDirectConnectGateway',
                       'RemoveAllowedPrefixesToDirectConnectGateway' => 'removeAllowedPrefixesToDirectConnectGateway'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::UpdateDirectConnectGatewayAssociation - Arguments for method UpdateDirectConnectGatewayAssociation on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDirectConnectGatewayAssociation on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method UpdateDirectConnectGatewayAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDirectConnectGatewayAssociation.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $UpdateDirectConnectGatewayAssociationResult =
      $directconnect->UpdateDirectConnectGatewayAssociation(
      AddAllowedPrefixesToDirectConnectGateway => [
        {
          Cidr => 'MyCIDR',    # OPTIONAL
        },
        ...
      ],                       # OPTIONAL
      AssociationId => 'MyDirectConnectGatewayAssociationId',    # OPTIONAL
      RemoveAllowedPrefixesToDirectConnectGateway => [
        {
          Cidr => 'MyCIDR',                                      # OPTIONAL
        },
        ...
      ],                                                         # OPTIONAL
      );

    # Results:
    my $DirectConnectGatewayAssociation =
      $UpdateDirectConnectGatewayAssociationResult
      ->DirectConnectGatewayAssociation;

# Returns a L<Paws::DirectConnect::UpdateDirectConnectGatewayAssociationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/UpdateDirectConnectGatewayAssociation>

=head1 ATTRIBUTES


=head2 AddAllowedPrefixesToDirectConnectGateway => ArrayRef[DirectConnect_RouteFilterPrefix]

The Amazon VPC prefixes to advertise to the Direct Connect gateway.



=head2 AssociationId => Str

The ID of the Direct Connect gateway association.



=head2 RemoveAllowedPrefixesToDirectConnectGateway => ArrayRef[DirectConnect_RouteFilterPrefix]

The Amazon VPC prefixes to no longer advertise to the Direct Connect
gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDirectConnectGatewayAssociation in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

