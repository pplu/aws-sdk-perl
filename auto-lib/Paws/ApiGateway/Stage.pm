
package Paws::ApiGateway::Stage;
  use Moose;
  has CacheClusterEnabled => (is => 'ro', isa => 'Bool');
  has CacheClusterSize => (is => 'ro', isa => 'Str');
  has CacheClusterStatus => (is => 'ro', isa => 'Str');
  has ClientCertificateId => (is => 'ro', isa => 'Str');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has DeploymentId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DocumentationVersion => (is => 'ro', isa => 'Str');
  has LastUpdatedDate => (is => 'ro', isa => 'Str');
  has MethodSettings => (is => 'ro', isa => 'Paws::ApiGateway::MapOfMethodSettings');
  has StageName => (is => 'ro', isa => 'Str');
  has Variables => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Stage

=head1 ATTRIBUTES


=head2 CacheClusterEnabled => Bool

Specifies whether a cache cluster is enabled for the stage.


=head2 CacheClusterSize => Str

The size of the cache cluster for the stage, if enabled.

Valid values are: C<"0.5">, C<"1.6">, C<"6.1">, C<"13.5">, C<"28.4">, C<"58.2">, C<"118">, C<"237">
=head2 CacheClusterStatus => Str

The status of the cache cluster for the stage, if enabled.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"AVAILABLE">, C<"DELETE_IN_PROGRESS">, C<"NOT_AVAILABLE">, C<"FLUSH_IN_PROGRESS">
=head2 ClientCertificateId => Str

The identifier of a client certificate for an API stage.


=head2 CreatedDate => Str

The date and time that the stage was created, in ISO 8601 format.


=head2 DeploymentId => Str

The identifier of the Deployment that the stage points to.


=head2 Description => Str

The stage's description.


=head2 DocumentationVersion => Str

The version of the associated API documentation.


=head2 LastUpdatedDate => Str

The date and time that information about the stage was last updated, in
ISO 8601 format.


=head2 MethodSettings => L<Paws::ApiGateway::MapOfMethodSettings>

A map that defines the method settings for a Stage resource. Keys
(designated as C</{method_setting_key> below) are method paths defined
as C<{resource_path}/{http_method}> for an individual method override,
or C</\*/\*> for overriding all methods in the stage.


=head2 StageName => Str

The name of the stage is the first path segment in the Uniform Resource
Identifier (URI) of a call to Amazon API Gateway.


=head2 Variables => L<Paws::ApiGateway::MapOfStringToString>

A map that defines the stage variables for a Stage resource. Variable
names can have alphanumeric and underscore characters, and the values
must match C<[A-Za-z0-9-._~:/?&num;&=,]+>.


=head2 _request_id => Str


=cut

