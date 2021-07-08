
package Paws::ApiGatewayV2::GetVpcLink;
  use Moose;
  has VpcLinkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vpcLinkId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetVpcLink');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/vpclinks/{vpcLinkId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::GetVpcLinkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetVpcLink - Arguments for method GetVpcLink on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetVpcLink on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method GetVpcLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetVpcLink.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $GetVpcLinkResponse = $apigateway->GetVpcLink(
      VpcLinkId => 'My__string',

    );

    # Results:
    my $CreatedDate          = $GetVpcLinkResponse->CreatedDate;
    my $Name                 = $GetVpcLinkResponse->Name;
    my $SecurityGroupIds     = $GetVpcLinkResponse->SecurityGroupIds;
    my $SubnetIds            = $GetVpcLinkResponse->SubnetIds;
    my $Tags                 = $GetVpcLinkResponse->Tags;
    my $VpcLinkId            = $GetVpcLinkResponse->VpcLinkId;
    my $VpcLinkStatus        = $GetVpcLinkResponse->VpcLinkStatus;
    my $VpcLinkStatusMessage = $GetVpcLinkResponse->VpcLinkStatusMessage;
    my $VpcLinkVersion       = $GetVpcLinkResponse->VpcLinkVersion;

    # Returns a L<Paws::ApiGatewayV2::GetVpcLinkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetVpcLink>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VpcLinkId => Str

The ID of the VPC link.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetVpcLink in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

