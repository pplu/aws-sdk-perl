# Generated from default/object.tt
package Paws::ApiGatewayV2::Stage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_AccessLogSettings ApiGatewayV2_RouteSettings ApiGatewayV2_StageVariablesMap ApiGatewayV2_Tags ApiGatewayV2_RouteSettingsMap/;
  has AccessLogSettings => (is => 'ro', isa => ApiGatewayV2_AccessLogSettings);
  has ClientCertificateId => (is => 'ro', isa => Str);
  has CreatedDate => (is => 'ro', isa => Str);
  has DefaultRouteSettings => (is => 'ro', isa => ApiGatewayV2_RouteSettings);
  has DeploymentId => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has LastUpdatedDate => (is => 'ro', isa => Str);
  has RouteSettings => (is => 'ro', isa => ApiGatewayV2_RouteSettingsMap);
  has StageName => (is => 'ro', isa => Str, required => 1);
  has StageVariables => (is => 'ro', isa => ApiGatewayV2_StageVariablesMap);
  has Tags => (is => 'ro', isa => ApiGatewayV2_Tags);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeploymentId' => {
                                   'type' => 'Str'
                                 },
               'Tags' => {
                           'type' => 'ApiGatewayV2_Tags',
                           'class' => 'Paws::ApiGatewayV2::Tags'
                         },
               'ClientCertificateId' => {
                                          'type' => 'Str'
                                        },
               'LastUpdatedDate' => {
                                      'type' => 'Str'
                                    },
               'DefaultRouteSettings' => {
                                           'class' => 'Paws::ApiGatewayV2::RouteSettings',
                                           'type' => 'ApiGatewayV2_RouteSettings'
                                         },
               'StageName' => {
                                'type' => 'Str'
                              },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'AccessLogSettings' => {
                                        'class' => 'Paws::ApiGatewayV2::AccessLogSettings',
                                        'type' => 'ApiGatewayV2_AccessLogSettings'
                                      },
               'StageVariables' => {
                                     'type' => 'ApiGatewayV2_StageVariablesMap',
                                     'class' => 'Paws::ApiGatewayV2::StageVariablesMap'
                                   },
               'Description' => {
                                  'type' => 'Str'
                                },
               'RouteSettings' => {
                                    'type' => 'ApiGatewayV2_RouteSettingsMap',
                                    'class' => 'Paws::ApiGatewayV2::RouteSettingsMap'
                                  }
             },
  'IsRequired' => {
                    'StageName' => 1
                  },
  'NameInRequest' => {
                       'StageVariables' => 'stageVariables',
                       'Description' => 'description',
                       'CreatedDate' => 'createdDate',
                       'AccessLogSettings' => 'accessLogSettings',
                       'RouteSettings' => 'routeSettings',
                       'Tags' => 'tags',
                       'DeploymentId' => 'deploymentId',
                       'StageName' => 'stageName',
                       'ClientCertificateId' => 'clientCertificateId',
                       'LastUpdatedDate' => 'lastUpdatedDate',
                       'DefaultRouteSettings' => 'defaultRouteSettings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::Stage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::Stage object:

  $service_obj->Method(Att1 => { AccessLogSettings => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::Stage object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessLogSettings

=head1 DESCRIPTION

Represents an API stage.

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


=head2 B<REQUIRED> StageName => Str

  The name of the stage.


=head2 StageVariables => ApiGatewayV2_StageVariablesMap

  A map that defines the stage variables for a stage resource. Variable
names can have alphanumeric and underscore characters, and the values
must match [A-Za-z0-9-._~:/?#&=,]+.


=head2 Tags => ApiGatewayV2_Tags

  The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with aws:. The tag value can be up to 256 characters..



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

