
package Paws::ApiGatewayV2::DeleteVpcLink;
  use Moose;
  has VpcLinkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vpcLinkId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpcLink');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/vpclinks/{vpcLinkId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::DeleteVpcLinkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::DeleteVpcLink - Arguments for method DeleteVpcLink on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVpcLink on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method DeleteVpcLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVpcLink.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $DeleteVpcLinkResponse = $apigateway->DeleteVpcLink(
      VpcLinkId => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/DeleteVpcLink>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VpcLinkId => Str

The ID of the VPC link.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVpcLink in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

