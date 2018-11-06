
package Paws::ApiGateway::UpdateVpcLink;
  use Moose;
  has PatchOperations => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::PatchOperation]', traits => ['NameInRequest'], request_name => 'patchOperations');
  has VpcLinkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vpclink_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVpcLink');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/vpclinks/{vpclink_id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::VpcLink');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateVpcLink - Arguments for method UpdateVpcLink on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVpcLink on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method UpdateVpcLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVpcLink.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $VpcLink = $apigateway->UpdateVpcLink(
      VpcLinkId       => 'MyString',
      PatchOperations => [
        {
          From => 'MyString',
          Op =>
            'add',    # values: add, remove, replace, move, copy, test; OPTIONAL
          Path  => 'MyString',
          Value => 'MyString',
        },
        ...
      ],              # OPTIONAL
    );

    # Results:
    my $Description   = $VpcLink->Description;
    my $Id            = $VpcLink->Id;
    my $Name          = $VpcLink->Name;
    my $Status        = $VpcLink->Status;
    my $StatusMessage = $VpcLink->StatusMessage;
    my $TargetArns    = $VpcLink->TargetArns;

    # Returns a L<Paws::ApiGateway::VpcLink> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateVpcLink>

=head1 ATTRIBUTES


=head2 PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]

A list of update operations to be applied to the specified resource and
in the order specified in this list.



=head2 B<REQUIRED> VpcLinkId => Str

[Required] The identifier of the VpcLink. It is used in an Integration
to reference this VpcLink.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVpcLink in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

