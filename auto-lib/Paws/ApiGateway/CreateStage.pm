
package Paws::ApiGateway::CreateStage;
  use Moose;
  has CacheClusterEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'cacheClusterEnabled');
  has CacheClusterSize => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheClusterSize');
  has CanarySettings => (is => 'ro', isa => 'Paws::ApiGateway::CanarySettings', traits => ['NameInRequest'], request_name => 'canarySettings');
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DocumentationVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentationVersion');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);
  has StageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'tags');
  has TracingEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'tracingEnabled');
  has Variables => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'variables');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/stages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Stage');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateStage - Arguments for method CreateStage on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStage on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method CreateStage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStage.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Stage = $apigateway->CreateStage(
      DeploymentId        => 'MyString',
      RestApiId           => 'MyString',
      StageName           => 'MyString',
      CacheClusterEnabled => 1,            # OPTIONAL
      CacheClusterSize    => '0.5',        # OPTIONAL
      CanarySettings      => {
        DeploymentId           => 'MyString',
        PercentTraffic         => 1,                                # OPTIONAL
        StageVariableOverrides => { 'MyString' => 'MyString', },    # OPTIONAL
        UseStageCache          => 1,
      },    # OPTIONAL
      Description          => 'MyString',                       # OPTIONAL
      DocumentationVersion => 'MyString',                       # OPTIONAL
      Tags                 => { 'MyString' => 'MyString', },    # OPTIONAL
      TracingEnabled       => 1,                                # OPTIONAL
      Variables            => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $AccessLogSettings    = $Stage->AccessLogSettings;
    my $CacheClusterEnabled  = $Stage->CacheClusterEnabled;
    my $CacheClusterSize     = $Stage->CacheClusterSize;
    my $CacheClusterStatus   = $Stage->CacheClusterStatus;
    my $CanarySettings       = $Stage->CanarySettings;
    my $ClientCertificateId  = $Stage->ClientCertificateId;
    my $CreatedDate          = $Stage->CreatedDate;
    my $DeploymentId         = $Stage->DeploymentId;
    my $Description          = $Stage->Description;
    my $DocumentationVersion = $Stage->DocumentationVersion;
    my $LastUpdatedDate      = $Stage->LastUpdatedDate;
    my $MethodSettings       = $Stage->MethodSettings;
    my $StageName            = $Stage->StageName;
    my $Tags                 = $Stage->Tags;
    my $TracingEnabled       = $Stage->TracingEnabled;
    my $Variables            = $Stage->Variables;
    my $WebAclArn            = $Stage->WebAclArn;

    # Returns a L<Paws::ApiGateway::Stage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateStage>

=head1 ATTRIBUTES


=head2 CacheClusterEnabled => Bool

Whether cache clustering is enabled for the stage.



=head2 CacheClusterSize => Str

The stage's cache cluster size.

Valid values are: C<"0.5">, C<"1.6">, C<"6.1">, C<"13.5">, C<"28.4">, C<"58.2">, C<"118">, C<"237">

=head2 CanarySettings => L<Paws::ApiGateway::CanarySettings>

The canary deployment settings of this stage.



=head2 B<REQUIRED> DeploymentId => Str

[Required] The identifier of the Deployment resource for the Stage
resource.



=head2 Description => Str

The description of the Stage resource.



=head2 DocumentationVersion => Str

The version of the associated API documentation.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 B<REQUIRED> StageName => Str

[Required] The name for the Stage resource.



=head2 Tags => L<Paws::ApiGateway::MapOfStringToString>

The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with C<aws:>. The tag value can be up to 256 characters.



=head2 TracingEnabled => Bool

Specifies whether active tracing with X-ray is enabled for the Stage.



=head2 Variables => L<Paws::ApiGateway::MapOfStringToString>

A map that defines the stage variables for the new Stage resource.
Variable names can have alphanumeric and underscore characters, and the
values must match C<[A-Za-z0-9-._~:/?#&=,]+>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStage in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

