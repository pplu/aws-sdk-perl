
package Paws::ApiGatewayV2::CreateVpcLink;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ApiGatewayV2::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpcLink');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/vpclinks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::CreateVpcLinkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateVpcLink - Arguments for method CreateVpcLink on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpcLink on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method CreateVpcLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpcLink.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $CreateVpcLinkResponse = $apigateway->CreateVpcLink(
      Name             => 'MyStringWithLengthBetween1And128',
      SubnetIds        => [ 'My__string', ... ],
      SecurityGroupIds => [ 'My__string', ... ],                # OPTIONAL
      Tags => { 'My__string' => 'MyStringWithLengthBetween1And1600', }
      ,                                                         # OPTIONAL
    );

    # Results:
    my $CreatedDate          = $CreateVpcLinkResponse->CreatedDate;
    my $Name                 = $CreateVpcLinkResponse->Name;
    my $SecurityGroupIds     = $CreateVpcLinkResponse->SecurityGroupIds;
    my $SubnetIds            = $CreateVpcLinkResponse->SubnetIds;
    my $Tags                 = $CreateVpcLinkResponse->Tags;
    my $VpcLinkId            = $CreateVpcLinkResponse->VpcLinkId;
    my $VpcLinkStatus        = $CreateVpcLinkResponse->VpcLinkStatus;
    my $VpcLinkStatusMessage = $CreateVpcLinkResponse->VpcLinkStatusMessage;
    my $VpcLinkVersion       = $CreateVpcLinkResponse->VpcLinkVersion;

    # Returns a L<Paws::ApiGatewayV2::CreateVpcLinkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateVpcLink>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the VPC link.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

A list of security group IDs for the VPC link.



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

A list of subnet IDs to include in the VPC link.



=head2 Tags => L<Paws::ApiGatewayV2::Tags>

A list of tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpcLink in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

