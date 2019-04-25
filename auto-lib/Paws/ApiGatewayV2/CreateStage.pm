
package Paws::ApiGatewayV2::CreateStage;
  use Moose;
  has AccessLogSettings => (is => 'ro', isa => 'Paws::ApiGatewayV2::AccessLogSettings', traits => ['NameInRequest'], request_name => 'accessLogSettings');
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has ClientCertificateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientCertificateId');
  has DefaultRouteSettings => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteSettings', traits => ['NameInRequest'], request_name => 'defaultRouteSettings');
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has RouteSettings => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteSettingsMap', traits => ['NameInRequest'], request_name => 'routeSettings');
  has StageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageName', required => 1);
  has StageVariables => (is => 'ro', isa => 'Paws::ApiGatewayV2::StageVariablesMap', traits => ['NameInRequest'], request_name => 'stageVariables');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/stages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::CreateStageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateStage - Arguments for method CreateStage on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStage on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method CreateStage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStage.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $CreateStageResponse = $apigateway->CreateStage(
      ApiId             => 'My__string',
      StageName         => 'MyStringWithLengthBetween1And128',
      AccessLogSettings => {
        DestinationArn => 'MyArn',                                # OPTIONAL
        Format         => 'MyStringWithLengthBetween1And1024',    # OPTIONAL
      },    # OPTIONAL
      ClientCertificateId  => 'MyId',    # OPTIONAL
      DefaultRouteSettings => {
        DataTraceEnabled       => 1,     # OPTIONAL
        DetailedMetricsEnabled => 1,     # OPTIONAL
        LoggingLevel         => 'ERROR', # values: ERROR, INFO, false; OPTIONAL
        ThrottlingBurstLimit => 1,       # OPTIONAL
        ThrottlingRateLimit  => 1,       # OPTIONAL
      },    # OPTIONAL
      DeploymentId  => 'MyId',                                 # OPTIONAL
      Description   => 'MyStringWithLengthBetween0And1024',    # OPTIONAL
      RouteSettings => {
        'My__string' => {
          DataTraceEnabled       => 1,                         # OPTIONAL
          DetailedMetricsEnabled => 1,                         # OPTIONAL
          LoggingLevel => 'ERROR',    # values: ERROR, INFO, false; OPTIONAL
          ThrottlingBurstLimit => 1,  # OPTIONAL
          ThrottlingRateLimit  => 1,  # OPTIONAL
        },
      },    # OPTIONAL
      StageVariables =>
        { 'My__string' => 'MyStringWithLengthBetween0And2048', },    # OPTIONAL
    );

    # Results:
    my $AccessLogSettings    = $CreateStageResponse->AccessLogSettings;
    my $ClientCertificateId  = $CreateStageResponse->ClientCertificateId;
    my $CreatedDate          = $CreateStageResponse->CreatedDate;
    my $DefaultRouteSettings = $CreateStageResponse->DefaultRouteSettings;
    my $DeploymentId         = $CreateStageResponse->DeploymentId;
    my $Description          = $CreateStageResponse->Description;
    my $LastUpdatedDate      = $CreateStageResponse->LastUpdatedDate;
    my $RouteSettings        = $CreateStageResponse->RouteSettings;
    my $StageName            = $CreateStageResponse->StageName;
    my $StageVariables       = $CreateStageResponse->StageVariables;

    # Returns a L<Paws::ApiGatewayV2::CreateStageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateStage>

=head1 ATTRIBUTES


=head2 AccessLogSettings => L<Paws::ApiGatewayV2::AccessLogSettings>

Settings for logging access in this stage.



=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 ClientCertificateId => Str

The identifier of a client certificate for a Stage.



=head2 DefaultRouteSettings => L<Paws::ApiGatewayV2::RouteSettings>

The default route settings for the stage.



=head2 DeploymentId => Str

The deployment identifier of the API stage.



=head2 Description => Str

The description for the API stage.



=head2 RouteSettings => L<Paws::ApiGatewayV2::RouteSettingsMap>

Route settings for the stage.



=head2 B<REQUIRED> StageName => Str

The name of the stage.



=head2 StageVariables => L<Paws::ApiGatewayV2::StageVariablesMap>

A map that defines the stage variables for a Stage. Variable names can
have alphanumeric and underscore characters, and the values must match
[A-Za-z0-9-._~:/?#&=,]+.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStage in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

