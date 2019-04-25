
package Paws::ApiGateway::PutRestApi;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body', required => 1);
  has FailOnWarnings => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'failonwarnings');
  has Mode => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'mode');
  has Parameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['ParamInQuery'], query_name => 'parameters');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRestApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::RestApi');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::PutRestApi - Arguments for method PutRestApi on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRestApi on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method PutRestApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRestApi.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $RestApi = $apigateway->PutRestApi(
      Body           => 'BlobBlob',
      RestApiId      => 'MyString',
      FailOnWarnings => 1,                                # OPTIONAL
      Mode           => 'merge',                          # OPTIONAL
      Parameters     => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $ApiKeySource           = $RestApi->ApiKeySource;
    my $BinaryMediaTypes       = $RestApi->BinaryMediaTypes;
    my $CreatedDate            = $RestApi->CreatedDate;
    my $Description            = $RestApi->Description;
    my $EndpointConfiguration  = $RestApi->EndpointConfiguration;
    my $Id                     = $RestApi->Id;
    my $MinimumCompressionSize = $RestApi->MinimumCompressionSize;
    my $Name                   = $RestApi->Name;
    my $Policy                 = $RestApi->Policy;
    my $Version                = $RestApi->Version;
    my $Warnings               = $RestApi->Warnings;

    # Returns a L<Paws::ApiGateway::RestApi> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/PutRestApi>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => Str

[Required] The PUT request body containing external API definitions.
Currently, only OpenAPI definition JSON/YAML files are supported. The
maximum size of the API definition file is 2MB.



=head2 FailOnWarnings => Bool

A query parameter to indicate whether to rollback the API update
(C<true>) or not (C<false>) when a warning is encountered. The default
value is C<false>.



=head2 Mode => Str

The C<mode> query parameter to specify the update mode. Valid values
are "merge" and "overwrite". By default, the update mode is "merge".

Valid values are: C<"merge">, C<"overwrite">

=head2 Parameters => L<Paws::ApiGateway::MapOfStringToString>

Custom header parameters as part of the request. For example, to
exclude DocumentationParts from an imported API, set
C<ignore=documentation> as a C<parameters> value, as in the AWS CLI
command of C<aws apigateway import-rest-api --parameters
ignore=documentation --body 'file:///path/to/imported-api-body.json'>.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRestApi in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

