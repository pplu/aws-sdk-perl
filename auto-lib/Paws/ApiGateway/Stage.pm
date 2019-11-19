
package Paws::ApiGateway::Stage;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::ApiGateway::Types qw/ApiGateway_MapOfStringToString ApiGateway_CanarySettings ApiGateway_AccessLogSettings ApiGateway_MapOfMethodSettings/;
  has AccessLogSettings => (is => 'ro', isa => ApiGateway_AccessLogSettings);
  has CacheClusterEnabled => (is => 'ro', isa => Bool);
  has CacheClusterSize => (is => 'ro', isa => Str);
  has CacheClusterStatus => (is => 'ro', isa => Str);
  has CanarySettings => (is => 'ro', isa => ApiGateway_CanarySettings);
  has ClientCertificateId => (is => 'ro', isa => Str);
  has CreatedDate => (is => 'ro', isa => Str);
  has DeploymentId => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has DocumentationVersion => (is => 'ro', isa => Str);
  has LastUpdatedDate => (is => 'ro', isa => Str);
  has MethodSettings => (is => 'ro', isa => ApiGateway_MapOfMethodSettings);
  has StageName => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ApiGateway_MapOfStringToString);
  has TracingEnabled => (is => 'ro', isa => Bool);
  has Variables => (is => 'ro', isa => ApiGateway_MapOfStringToString);
  has WebAclArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeploymentId' => {
                                   'type' => 'Str'
                                 },
               'DocumentationVersion' => {
                                           'type' => 'Str'
                                         },
               'MethodSettings' => {
                                     'type' => 'ApiGateway_MapOfMethodSettings',
                                     'class' => 'Paws::ApiGateway::MapOfMethodSettings'
                                   },
               'ClientCertificateId' => {
                                          'type' => 'Str'
                                        },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::ApiGateway::MapOfStringToString',
                           'type' => 'ApiGateway_MapOfStringToString'
                         },
               'CacheClusterEnabled' => {
                                          'type' => 'Bool'
                                        },
               'StageName' => {
                                'type' => 'Str'
                              },
               'CacheClusterStatus' => {
                                         'type' => 'Str'
                                       },
               'Variables' => {
                                'type' => 'ApiGateway_MapOfStringToString',
                                'class' => 'Paws::ApiGateway::MapOfStringToString'
                              },
               'LastUpdatedDate' => {
                                      'type' => 'Str'
                                    },
               'Description' => {
                                  'type' => 'Str'
                                },
               'TracingEnabled' => {
                                     'type' => 'Bool'
                                   },
               'AccessLogSettings' => {
                                        'type' => 'ApiGateway_AccessLogSettings',
                                        'class' => 'Paws::ApiGateway::AccessLogSettings'
                                      },
               'WebAclArn' => {
                                'type' => 'Str'
                              },
               'CacheClusterSize' => {
                                       'type' => 'Str'
                                     },
               'CanarySettings' => {
                                     'type' => 'ApiGateway_CanarySettings',
                                     'class' => 'Paws::ApiGateway::CanarySettings'
                                   }
             },
  'NameInRequest' => {
                       'CreatedDate' => 'createdDate',
                       'ClientCertificateId' => 'clientCertificateId',
                       'MethodSettings' => 'methodSettings',
                       'DeploymentId' => 'deploymentId',
                       'DocumentationVersion' => 'documentationVersion',
                       'CanarySettings' => 'canarySettings',
                       'CacheClusterSize' => 'cacheClusterSize',
                       'WebAclArn' => 'webAclArn',
                       'AccessLogSettings' => 'accessLogSettings',
                       'Description' => 'description',
                       'TracingEnabled' => 'tracingEnabled',
                       'LastUpdatedDate' => 'lastUpdatedDate',
                       'Variables' => 'variables',
                       'CacheClusterStatus' => 'cacheClusterStatus',
                       'StageName' => 'stageName',
                       'CacheClusterEnabled' => 'cacheClusterEnabled',
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Stage

=head1 ATTRIBUTES


=head2 AccessLogSettings => ApiGateway_AccessLogSettings

Settings for logging access in this stage.


=head2 CacheClusterEnabled => Bool

Specifies whether a cache cluster is enabled for the stage.


=head2 CacheClusterSize => Str

The size of the cache cluster for the stage, if enabled.

Valid values are: C<"0.5">, C<"1.6">, C<"6.1">, C<"13.5">, C<"28.4">, C<"58.2">, C<"118">, C<"237">
=head2 CacheClusterStatus => Str

The status of the cache cluster for the stage, if enabled.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"AVAILABLE">, C<"DELETE_IN_PROGRESS">, C<"NOT_AVAILABLE">, C<"FLUSH_IN_PROGRESS">
=head2 CanarySettings => ApiGateway_CanarySettings

Settings for the canary deployment in this stage.


=head2 ClientCertificateId => Str

The identifier of a client certificate for an API stage.


=head2 CreatedDate => Str

The timestamp when the stage was created.


=head2 DeploymentId => Str

The identifier of the Deployment that the stage points to.


=head2 Description => Str

The stage's description.


=head2 DocumentationVersion => Str

The version of the associated API documentation.


=head2 LastUpdatedDate => Str

The timestamp when the stage last updated.


=head2 MethodSettings => ApiGateway_MapOfMethodSettings

A map that defines the method settings for a Stage resource. Keys
(designated as C</{method_setting_key> below) are method paths defined
as C<{resource_path}/{http_method}> for an individual method override,
or C</\*/\*> for overriding all methods in the stage.


=head2 StageName => Str

The name of the stage is the first path segment in the Uniform Resource
Identifier (URI) of a call to API Gateway. Stage names can only contain
alphanumeric characters, hyphens, and underscores. Maximum length is
128 characters.


=head2 Tags => ApiGateway_MapOfStringToString

The collection of tags. Each tag element is associated with a given
resource.


=head2 TracingEnabled => Bool

Specifies whether active tracing with X-ray is enabled for the Stage.


=head2 Variables => ApiGateway_MapOfStringToString

A map that defines the stage variables for a Stage resource. Variable
names can have alphanumeric and underscore characters, and the values
must match C<[A-Za-z0-9-._~:/?&num;&=,]+>.


=head2 WebAclArn => Str

The ARN of the WebAcl associated with the Stage.


=head2 _request_id => Str


=cut

