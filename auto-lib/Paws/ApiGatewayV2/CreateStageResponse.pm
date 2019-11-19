
package Paws::ApiGatewayV2::CreateStageResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_AccessLogSettings ApiGatewayV2_RouteSettings ApiGatewayV2_Tags ApiGatewayV2_RouteSettingsMap ApiGatewayV2_StageVariablesMap/;
  has AccessLogSettings => (is => 'ro', isa => ApiGatewayV2_AccessLogSettings);
  has ClientCertificateId => (is => 'ro', isa => Str);
  has CreatedDate => (is => 'ro', isa => Str);
  has DefaultRouteSettings => (is => 'ro', isa => ApiGatewayV2_RouteSettings);
  has DeploymentId => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has LastUpdatedDate => (is => 'ro', isa => Str);
  has RouteSettings => (is => 'ro', isa => ApiGatewayV2_RouteSettingsMap);
  has StageName => (is => 'ro', isa => Str);
  has StageVariables => (is => 'ro', isa => ApiGatewayV2_StageVariablesMap);
  has Tags => (is => 'ro', isa => ApiGatewayV2_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeploymentId' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::ApiGatewayV2::Tags',
                           'type' => 'ApiGatewayV2_Tags'
                         },
               'DefaultRouteSettings' => {
                                           'class' => 'Paws::ApiGatewayV2::RouteSettings',
                                           'type' => 'ApiGatewayV2_RouteSettings'
                                         },
               'LastUpdatedDate' => {
                                      'type' => 'Str'
                                    },
               'ClientCertificateId' => {
                                          'type' => 'Str'
                                        },
               'StageName' => {
                                'type' => 'Str'
                              },
               'AccessLogSettings' => {
                                        'type' => 'ApiGatewayV2_AccessLogSettings',
                                        'class' => 'Paws::ApiGatewayV2::AccessLogSettings'
                                      },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'Description' => {
                                  'type' => 'Str'
                                },
               'StageVariables' => {
                                     'type' => 'ApiGatewayV2_StageVariablesMap',
                                     'class' => 'Paws::ApiGatewayV2::StageVariablesMap'
                                   },
               'RouteSettings' => {
                                    'type' => 'ApiGatewayV2_RouteSettingsMap',
                                    'class' => 'Paws::ApiGatewayV2::RouteSettingsMap'
                                  }
             },
  'NameInRequest' => {
                       'RouteSettings' => 'routeSettings',
                       'AccessLogSettings' => 'accessLogSettings',
                       'CreatedDate' => 'createdDate',
                       'Description' => 'description',
                       'StageVariables' => 'stageVariables',
                       'DefaultRouteSettings' => 'defaultRouteSettings',
                       'ClientCertificateId' => 'clientCertificateId',
                       'LastUpdatedDate' => 'lastUpdatedDate',
                       'StageName' => 'stageName',
                       'DeploymentId' => 'deploymentId',
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateStageResponse

=head1 ATTRIBUTES


=head2 AccessLogSettings => ApiGatewayV2_AccessLogSettings

Settings for logging access in this stage.


=head2 ClientCertificateId => Str

The identifier of a client certificate for a Stage.


=head2 CreatedDate => Str

The timestamp when the stage was created.


=head2 DefaultRouteSettings => ApiGatewayV2_RouteSettings

Default route settings for the stage.


=head2 DeploymentId => Str

The identifier of the Deployment that the Stage is associated with.


=head2 Description => Str

The description of the stage.


=head2 LastUpdatedDate => Str

The timestamp when the stage was last updated.


=head2 RouteSettings => ApiGatewayV2_RouteSettingsMap

Route settings for the stage.


=head2 StageName => Str

The name of the stage.


=head2 StageVariables => ApiGatewayV2_StageVariablesMap

A map that defines the stage variables for a stage resource. Variable
names can have alphanumeric and underscore characters, and the values
must match [A-Za-z0-9-._~:/?#&=,]+.


=head2 Tags => ApiGatewayV2_Tags

The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with aws:. The tag value can be up to 256 characters..


=head2 _request_id => Str


=cut

