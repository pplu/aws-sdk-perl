# Generated from default/object.tt
package Paws::ApiGatewayV2::UpdateStageInput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_StageVariablesMap ApiGatewayV2_AccessLogSettings ApiGatewayV2_RouteSettings ApiGatewayV2_RouteSettingsMap/;
  has AccessLogSettings => (is => 'ro', isa => ApiGatewayV2_AccessLogSettings);
  has ClientCertificateId => (is => 'ro', isa => Str);
  has DefaultRouteSettings => (is => 'ro', isa => ApiGatewayV2_RouteSettings);
  has DeploymentId => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has RouteSettings => (is => 'ro', isa => ApiGatewayV2_RouteSettingsMap);
  has StageVariables => (is => 'ro', isa => ApiGatewayV2_StageVariablesMap);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientCertificateId' => {
                                          'type' => 'Str'
                                        },
               'AccessLogSettings' => {
                                        'class' => 'Paws::ApiGatewayV2::AccessLogSettings',
                                        'type' => 'ApiGatewayV2_AccessLogSettings'
                                      },
               'DeploymentId' => {
                                   'type' => 'Str'
                                 },
               'StageVariables' => {
                                     'class' => 'Paws::ApiGatewayV2::StageVariablesMap',
                                     'type' => 'ApiGatewayV2_StageVariablesMap'
                                   },
               'RouteSettings' => {
                                    'class' => 'Paws::ApiGatewayV2::RouteSettingsMap',
                                    'type' => 'ApiGatewayV2_RouteSettingsMap'
                                  },
               'Description' => {
                                  'type' => 'Str'
                                },
               'DefaultRouteSettings' => {
                                           'class' => 'Paws::ApiGatewayV2::RouteSettings',
                                           'type' => 'ApiGatewayV2_RouteSettings'
                                         }
             },
  'NameInRequest' => {
                       'ClientCertificateId' => 'clientCertificateId',
                       'AccessLogSettings' => 'accessLogSettings',
                       'DeploymentId' => 'deploymentId',
                       'StageVariables' => 'stageVariables',
                       'RouteSettings' => 'routeSettings',
                       'Description' => 'description',
                       'DefaultRouteSettings' => 'defaultRouteSettings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateStageInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::UpdateStageInput object:

  $service_obj->Method(Att1 => { AccessLogSettings => $value, ..., StageVariables => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::UpdateStageInput object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessLogSettings

=head1 DESCRIPTION

Represents the input parameters for an UpdateStage request.

=head1 ATTRIBUTES


=head2 AccessLogSettings => ApiGatewayV2_AccessLogSettings

  Settings for logging access in this stage.


=head2 ClientCertificateId => Str

  The identifier of a client certificate for a Stage.


=head2 DefaultRouteSettings => ApiGatewayV2_RouteSettings

  The default route settings for the stage.


=head2 DeploymentId => Str

  The deployment identifier for the API stage.


=head2 Description => Str

  The description for the API stage.


=head2 RouteSettings => ApiGatewayV2_RouteSettingsMap

  Route settings for the stage.


=head2 StageVariables => ApiGatewayV2_StageVariablesMap

  A map that defines the stage variables for a Stage. Variable names can
have alphanumeric and underscore characters, and the values must match
[A-Za-z0-9-._~:/?#&=,]+.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

