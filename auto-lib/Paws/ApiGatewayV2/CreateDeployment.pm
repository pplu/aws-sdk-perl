
package Paws::ApiGatewayV2::CreateDeployment;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has StageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/deployments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::CreateDeploymentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateDeployment - Arguments for method CreateDeployment on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeployment on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method CreateDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeployment.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $CreateDeploymentResponse = $apigateway->CreateDeployment(
      ApiId       => 'My__string',
      Description => 'MyStringWithLengthBetween0And1024',    # OPTIONAL
      StageName   => 'MyStringWithLengthBetween1And128',     # OPTIONAL
    );

    # Results:
    my $CreatedDate      = $CreateDeploymentResponse->CreatedDate;
    my $DeploymentId     = $CreateDeploymentResponse->DeploymentId;
    my $DeploymentStatus = $CreateDeploymentResponse->DeploymentStatus;
    my $DeploymentStatusMessage =
      $CreateDeploymentResponse->DeploymentStatusMessage;
    my $Description = $CreateDeploymentResponse->Description;

    # Returns a L<Paws::ApiGatewayV2::CreateDeploymentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 Description => Str

The description for the deployment resource.



=head2 StageName => Str

The name of the Stage resource for the Deployment resource to create.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeployment in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

