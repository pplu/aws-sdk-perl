
package Paws::ApiGatewayV2::GetStage;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has StageName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'stageName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/stages/{stageName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::GetStageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetStage - Arguments for method GetStage on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStage on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method GetStage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStage.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $GetStageResponse = $apigateway->GetStage(
      ApiId     => 'My__string',
      StageName => 'My__string',

    );

    # Results:
    my $AccessLogSettings    = $GetStageResponse->AccessLogSettings;
    my $ClientCertificateId  = $GetStageResponse->ClientCertificateId;
    my $CreatedDate          = $GetStageResponse->CreatedDate;
    my $DefaultRouteSettings = $GetStageResponse->DefaultRouteSettings;
    my $DeploymentId         = $GetStageResponse->DeploymentId;
    my $Description          = $GetStageResponse->Description;
    my $LastUpdatedDate      = $GetStageResponse->LastUpdatedDate;
    my $RouteSettings        = $GetStageResponse->RouteSettings;
    my $StageName            = $GetStageResponse->StageName;
    my $StageVariables       = $GetStageResponse->StageVariables;

    # Returns a L<Paws::ApiGatewayV2::GetStageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetStage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 B<REQUIRED> StageName => Str

The stage name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStage in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

