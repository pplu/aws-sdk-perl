package Paws::ApiGatewayV2::CreateStageInput;
  use Moose;
  has AccessLogSettings => (is => 'ro', isa => 'Paws::ApiGatewayV2::AccessLogSettings', request_name => 'accessLogSettings', traits => ['NameInRequest']);
  has ClientCertificateId => (is => 'ro', isa => 'Str', request_name => 'clientCertificateId', traits => ['NameInRequest']);
  has DefaultRouteSettings => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteSettings', request_name => 'defaultRouteSettings', traits => ['NameInRequest']);
  has DeploymentId => (is => 'ro', isa => 'Str', request_name => 'deploymentId', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has RouteSettings => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteSettingsMap', request_name => 'routeSettings', traits => ['NameInRequest']);
  has StageName => (is => 'ro', isa => 'Str', request_name => 'stageName', traits => ['NameInRequest'], required => 1);
  has StageVariables => (is => 'ro', isa => 'Paws::ApiGatewayV2::StageVariablesMap', request_name => 'stageVariables', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateStageInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::CreateStageInput object:

  $service_obj->Method(Att1 => { AccessLogSettings => $value, ..., StageVariables => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::CreateStageInput object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessLogSettings

=head1 DESCRIPTION

Represents the input parameters for a CreateStage request.

=head1 ATTRIBUTES


=head2 AccessLogSettings => L<Paws::ApiGatewayV2::AccessLogSettings>

  Settings for logging access in this stage.


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

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

