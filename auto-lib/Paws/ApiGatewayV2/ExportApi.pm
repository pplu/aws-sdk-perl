
package Paws::ApiGatewayV2::ExportApi;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has ExportVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'exportVersion');
  has IncludeExtensions => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'includeExtensions');
  has OutputType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'outputType', required => 1);
  has Specification => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'specification', required => 1);
  has StageName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'stageName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/exports/{specification}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::ExportApiResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::ExportApi - Arguments for method ExportApi on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportApi on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method ExportApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportApi.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $ExportApiResponse = $apigateway->ExportApi(
      ApiId             => 'My__string',
      OutputType        => 'My__string',
      Specification     => 'My__string',
      ExportVersion     => 'My__string',    # OPTIONAL
      IncludeExtensions => 1,               # OPTIONAL
      StageName         => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Body = $ExportApiResponse->Body;

    # Returns a L<Paws::ApiGatewayV2::ExportApiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/ExportApi>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 ExportVersion => Str

The version of the API Gateway export algorithm. API Gateway uses the
latest version by default. Currently, the only supported version is
1.0.



=head2 IncludeExtensions => Bool

Specifies whether to include API Gateway extensions
(https://docs.aws.amazon.com//apigateway/latest/developerguide/api-gateway-swagger-extensions.html)
in the exported API definition. API Gateway extensions are included by
default.



=head2 B<REQUIRED> OutputType => Str

The output type of the exported definition file. Valid values are JSON
and YAML.



=head2 B<REQUIRED> Specification => Str

The version of the API specification to use. OAS30, for OpenAPI 3.0, is
the only supported value.



=head2 StageName => Str

The name of the API stage to export. If you don't specify this
property, a representation of the latest API configuration is exported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportApi in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

