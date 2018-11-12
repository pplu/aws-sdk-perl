
package Paws::ApiGateway::ImportRestApi;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body', required => 1);
  has FailOnWarnings => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'failonwarnings');
  has Parameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['ParamInQuery'], query_name => 'parameters');

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportRestApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis?mode=import');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::RestApi');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ImportRestApi - Arguments for method ImportRestApi on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportRestApi on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method ImportRestApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportRestApi.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $RestApi = $apigateway->ImportRestApi(
      Body           => 'BlobBlob',
      FailOnWarnings => 1,                                # OPTIONAL
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/ImportRestApi>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => Str

[Required] The POST request body containing external API definitions.
Currently, only OpenAPI definition JSON/YAML files are supported. The
maximum size of the API definition file is 2MB.



=head2 FailOnWarnings => Bool

A query parameter to indicate whether to rollback the API creation
(C<true>) or not (C<false>) when a warning is encountered. The default
value is C<false>.



=head2 Parameters => L<Paws::ApiGateway::MapOfStringToString>

A key-value map of context-specific query string parameters specifying
the behavior of different API importing operations. The following shows
operation-specific parameters and their supported values.

To exclude DocumentationParts from the import, set C<parameters> as
C<ignore=documentation>.

To configure the endpoint type, set C<parameters> as
C<endpointConfigurationTypes=EDGE>,
C<endpointConfigurationTypes=REGIONAL>, or
C<endpointConfigurationTypes=PRIVATE>. The default endpoint type is
C<EDGE>.

To handle imported C<basePath>, set C<parameters> as
C<basePath=ignore>, C<basePath=prepend> or C<basePath=split>.

For example, the AWS CLI command to exclude documentation from the
imported API is:

 aws apigateway import-rest-api --parameters ignore=documentation --body 'file:///path/to/imported-api-body.json'

The AWS CLI command to set the regional endpoint on the imported API
is:

 aws apigateway import-rest-api --parameters endpointConfigurationTypes=REGIONAL --body 'file:///path/to/imported-api-body.json'




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportRestApi in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

