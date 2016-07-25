
package Paws::ApiGateway::GetExport;
  use Moose;
  has Accepts => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'accepts' );
  has ExportType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'exportType' , required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['ParamInQuery'], query_name => 'parameters' );
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId' , required => 1);
  has StageName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'stageName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetExport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/stages/{stage_name}/exports/{export_type}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::ExportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetExport - Arguments for method GetExport on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetExport on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method GetExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetExport.

As an example:

  $service_obj->GetExport(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Accepts => Str

The content-type of the export, for example 'application/json'.
Currently 'application/json' and 'application/yaml' are supported for
exportType 'swagger'. Should be specifed in the 'Accept' header for
direct API requests.



=head2 B<REQUIRED> ExportType => Str

The type of export. Currently only 'swagger' is supported.



=head2 Parameters => L<Paws::ApiGateway::MapOfStringToString>

A key-value map of query string parameters that specify properties of
the export, depending on the requested exportType. For exportType
'swagger', any combination of the following parameters are supported:
'integrations' will export x-amazon-apigateway-integration extensions
'authorizers' will export x-amazon-apigateway-authorizer extensions
'postman' will export with Postman extensions, allowing for import to
the Postman tool



=head2 B<REQUIRED> RestApiId => Str

The identifier of the RestApi to be exported.



=head2 B<REQUIRED> StageName => Str

The name of the Stage that will be exported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetExport in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

