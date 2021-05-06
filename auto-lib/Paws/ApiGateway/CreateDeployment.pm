
package Paws::ApiGateway::CreateDeployment;
  use Moose;
  has CacheClusterEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'cacheClusterEnabled');
  has CacheClusterSize => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheClusterSize');
  has CanarySettings => (is => 'ro', isa => 'Paws::ApiGateway::DeploymentCanarySettings', traits => ['NameInRequest'], request_name => 'canarySettings');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);
  has StageDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageDescription');
  has StageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageName');
  has TracingEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'tracingEnabled');
  has Variables => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'variables');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/deployments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Deployment');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateDeployment - Arguments for method CreateDeployment on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeployment on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method CreateDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeployment.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Deployment = $apigateway->CreateDeployment(
      RestApiId           => 'MyString',
      CacheClusterEnabled => 1,            # OPTIONAL
      CacheClusterSize    => '0.5',        # OPTIONAL
      CanarySettings      => {
        PercentTraffic         => 1,                                # OPTIONAL
        StageVariableOverrides => { 'MyString' => 'MyString', },    # OPTIONAL
        UseStageCache          => 1,                                # OPTIONAL
      },    # OPTIONAL
      Description      => 'MyString',                       # OPTIONAL
      StageDescription => 'MyString',                       # OPTIONAL
      StageName        => 'MyString',                       # OPTIONAL
      TracingEnabled   => 1,                                # OPTIONAL
      Variables        => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $ApiSummary  = $Deployment->ApiSummary;
    my $CreatedDate = $Deployment->CreatedDate;
    my $Description = $Deployment->Description;
    my $Id          = $Deployment->Id;

    # Returns a L<Paws::ApiGateway::Deployment> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateDeployment>

=head1 ATTRIBUTES


=head2 CacheClusterEnabled => Bool

Enables a cache cluster for the Stage resource specified in the input.



=head2 CacheClusterSize => Str

Specifies the cache cluster size for the Stage resource specified in
the input, if a cache cluster is enabled.

Valid values are: C<"0.5">, C<"1.6">, C<"6.1">, C<"13.5">, C<"28.4">, C<"58.2">, C<"118">, C<"237">

=head2 CanarySettings => L<Paws::ApiGateway::DeploymentCanarySettings>

The input configuration for the canary deployment when the deployment
is a canary release deployment.



=head2 Description => Str

The description for the Deployment resource to create.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 StageDescription => Str

The description of the Stage resource for the Deployment resource to
create.



=head2 StageName => Str

The name of the Stage resource for the Deployment resource to create.



=head2 TracingEnabled => Bool

Specifies whether active tracing with X-ray is enabled for the Stage.



=head2 Variables => L<Paws::ApiGateway::MapOfStringToString>

A map that defines the stage variables for the Stage resource that is
associated with the new deployment. Variable names can have
alphanumeric and underscore characters, and the values must match
C<[A-Za-z0-9-._~:/?&num;&=,]+>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeployment in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

