
package Paws::ApiGatewayV2::UpdateStageResponse;
  use Moose;
  has AccessLogSettings => (is => 'ro', isa => 'Paws::ApiGatewayV2::AccessLogSettings', traits => ['NameInRequest'], request_name => 'accessLogSettings');
  has ClientCertificateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientCertificateId');
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has DefaultRouteSettings => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteSettings', traits => ['NameInRequest'], request_name => 'defaultRouteSettings');
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LastUpdatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDate');
  has RouteSettings => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteSettingsMap', traits => ['NameInRequest'], request_name => 'routeSettings');
  has StageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageName');
  has StageVariables => (is => 'ro', isa => 'Paws::ApiGatewayV2::StageVariablesMap', traits => ['NameInRequest'], request_name => 'stageVariables');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateStageResponse

=head1 ATTRIBUTES


=head2 AccessLogSettings => L<Paws::ApiGatewayV2::AccessLogSettings>

Settings for logging access in this stage.


=head2 ClientCertificateId => Str

The identifier of a client certificate for a Stage.


=head2 CreatedDate => Str

The timestamp when the stage was created.


=head2 DefaultRouteSettings => L<Paws::ApiGatewayV2::RouteSettings>

Default route settings for the stage.


=head2 DeploymentId => Str

The identifier of the Deployment that the Stage is associated with.


=head2 Description => Str

The description of the stage.


=head2 LastUpdatedDate => Str

The timestamp when the stage was last updated.


=head2 RouteSettings => L<Paws::ApiGatewayV2::RouteSettingsMap>

Route settings for the stage.


=head2 StageName => Str

The name of the stage.


=head2 StageVariables => L<Paws::ApiGatewayV2::StageVariablesMap>

A map that defines the stage variables for a stage resource. Variable
names can have alphanumeric and underscore characters, and the values
must match [A-Za-z0-9-._~:/?#&=,]+.


=head2 _request_id => Str


=cut

