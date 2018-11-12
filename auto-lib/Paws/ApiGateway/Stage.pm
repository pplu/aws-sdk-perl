
package Paws::ApiGateway::Stage;
  use Moose;
  has AccessLogSettings => (is => 'ro', isa => 'Paws::ApiGateway::AccessLogSettings', traits => ['NameInRequest'], request_name => 'accessLogSettings');
  has CacheClusterEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'cacheClusterEnabled');
  has CacheClusterSize => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheClusterSize');
  has CacheClusterStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheClusterStatus');
  has CanarySettings => (is => 'ro', isa => 'Paws::ApiGateway::CanarySettings', traits => ['NameInRequest'], request_name => 'canarySettings');
  has ClientCertificateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientCertificateId');
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DocumentationVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentationVersion');
  has LastUpdatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDate');
  has MethodSettings => (is => 'ro', isa => 'Paws::ApiGateway::MapOfMethodSettings', traits => ['NameInRequest'], request_name => 'methodSettings');
  has StageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageName');
  has Tags => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'tags');
  has TracingEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'tracingEnabled');
  has Variables => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'variables');
  has WebAclArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'webAclArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Stage

=head1 ATTRIBUTES


=head2 AccessLogSettings => L<Paws::ApiGateway::AccessLogSettings>

Settings for logging access in this stage.


=head2 CacheClusterEnabled => Bool

Specifies whether a cache cluster is enabled for the stage.


=head2 CacheClusterSize => Str

The size of the cache cluster for the stage, if enabled.

Valid values are: C<"0.5">, C<"1.6">, C<"6.1">, C<"13.5">, C<"28.4">, C<"58.2">, C<"118">, C<"237">
=head2 CacheClusterStatus => Str

The status of the cache cluster for the stage, if enabled.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"AVAILABLE">, C<"DELETE_IN_PROGRESS">, C<"NOT_AVAILABLE">, C<"FLUSH_IN_PROGRESS">
=head2 CanarySettings => L<Paws::ApiGateway::CanarySettings>

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


=head2 MethodSettings => L<Paws::ApiGateway::MapOfMethodSettings>

A map that defines the method settings for a Stage resource. Keys
(designated as C</{method_setting_key> below) are method paths defined
as C<{resource_path}/{http_method}> for an individual method override,
or C</\*/\*> for overriding all methods in the stage.


=head2 StageName => Str

The name of the stage is the first path segment in the Uniform Resource
Identifier (URI) of a call to API Gateway.


=head2 Tags => L<Paws::ApiGateway::MapOfStringToString>

The collection of tags. Each tag element is associated with a given
resource.


=head2 TracingEnabled => Bool

Specifies whether active tracing with X-ray is enabled for the Stage.


=head2 Variables => L<Paws::ApiGateway::MapOfStringToString>

A map that defines the stage variables for a Stage resource. Variable
names can have alphanumeric and underscore characters, and the values
must match C<[A-Za-z0-9-._~:/?&num;&=,]+>.


=head2 WebAclArn => Str

The ARN of the WebAcl associated with the Stage.


=head2 _request_id => Str


=cut

