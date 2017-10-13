
package Paws::ApiGateway::CreateStage;
  use Moose;
  has CacheClusterEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'cacheClusterEnabled');
  has CacheClusterSize => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheClusterSize');
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DocumentationVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentationVersion');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId', required => 1);
  has StageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageName', required => 1);
  has Variables => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'variables');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/stages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Stage');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateStage - Arguments for method CreateStage on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStage on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method CreateStage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStage.

As an example:

  $service_obj->CreateStage(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CacheClusterEnabled => Bool

Whether cache clustering is enabled for the stage.



=head2 CacheClusterSize => Str

The stage's cache cluster size.

Valid values are: C<"0.5">, C<"1.6">, C<"6.1">, C<"13.5">, C<"28.4">, C<"58.2">, C<"118">, C<"237">

=head2 B<REQUIRED> DeploymentId => Str

The identifier of the Deployment resource for the Stage resource.



=head2 Description => Str

The description of the Stage resource.



=head2 DocumentationVersion => Str

The version of the associated API documentation.



=head2 B<REQUIRED> RestApiId => Str

The string identifier of the associated RestApi.



=head2 B<REQUIRED> StageName => Str

The name for the Stage resource.



=head2 Variables => L<Paws::ApiGateway::MapOfStringToString>

A map that defines the stage variables for the new Stage resource.
Variable names can have alphanumeric and underscore characters, and the
values must match C<[A-Za-z0-9-._~:/?#&=,]+>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStage in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

