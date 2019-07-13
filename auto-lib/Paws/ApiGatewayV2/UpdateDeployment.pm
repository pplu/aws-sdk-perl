
package Paws::ApiGatewayV2::UpdateDeployment;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deploymentId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/deployments/{deploymentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::UpdateDeploymentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateDeployment - Arguments for method UpdateDeployment on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDeployment on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method UpdateDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDeployment.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $UpdateDeploymentResponse = $apigateway->UpdateDeployment(
      ApiId        => 'My__string',
      DeploymentId => 'My__string',
      Description  => 'MyStringWithLengthBetween0And1024',    # OPTIONAL
    );

    # Results:
    my $CreatedDate      = $UpdateDeploymentResponse->CreatedDate;
    my $DeploymentId     = $UpdateDeploymentResponse->DeploymentId;
    my $DeploymentStatus = $UpdateDeploymentResponse->DeploymentStatus;
    my $DeploymentStatusMessage =
      $UpdateDeploymentResponse->DeploymentStatusMessage;
    my $Description = $UpdateDeploymentResponse->Description;

    # Returns a L<Paws::ApiGatewayV2::UpdateDeploymentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 B<REQUIRED> DeploymentId => Str

The deployment ID.



=head2 Description => Str

The description for the deployment resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDeployment in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

