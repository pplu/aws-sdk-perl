
package Paws::ApiGateway::GetStage;
  use Moose;
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);
  has StageName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'stage_name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/stages/{stage_name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Stage');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetStage - Arguments for method GetStage on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStage on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetStage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStage.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Stage = $apigateway->GetStage(
      RestApiId => 'MyString',
      StageName => 'MyString',

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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetStage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 B<REQUIRED> StageName => Str

[Required] The name of the Stage resource to get information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStage in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

