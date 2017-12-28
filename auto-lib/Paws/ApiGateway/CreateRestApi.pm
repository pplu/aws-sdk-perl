
package Paws::ApiGateway::CreateRestApi;
  use Moose;
  has ApiKeySource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiKeySource');
  has BinaryMediaTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'binaryMediaTypes');
  has CloneFrom => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cloneFrom');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EndpointConfiguration => (is => 'ro', isa => 'Paws::ApiGateway::EndpointConfiguration', traits => ['NameInRequest'], request_name => 'endpointConfiguration');
  has MinimumCompressionSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'minimumCompressionSize');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRestApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::RestApi');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateRestApi - Arguments for method CreateRestApi on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRestApi on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method CreateRestApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRestApi.

As an example:

  $service_obj->CreateRestApi(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ApiKeySource => Str

The source of the API key for metring requests according to a usage
plan. Valid values are

=over

=item * C<HEADER> to read the API key from the C<X-API-Key> header of a
request.

=item * C<AUTHORIZER> to read the API key from the
C<UsageIdentifierKey> from a custom authorizer.

=back


Valid values are: C<"HEADER">, C<"AUTHORIZER">

=head2 BinaryMediaTypes => ArrayRef[Str|Undef]

The list of binary media types supported by the RestApi. By default,
the RestApi supports only UTF-8-encoded text payloads.



=head2 CloneFrom => Str

The ID of the RestApi that you want to clone from.



=head2 Description => Str

The description of the RestApi.



=head2 EndpointConfiguration => L<Paws::ApiGateway::EndpointConfiguration>

The endpoint configuration of this RestApi showing the endpoint types
of the API.



=head2 MinimumCompressionSize => Int

A nullable integer used to enable (non-negative between 0 and 10485760
(10M) bytes, inclusive) or disable (null) compression on an API. When
compression is enabled, compression or decompression are not applied on
the payload if the payload size is smaller than this value. Setting it
to zero allows compression for any payload size.



=head2 B<REQUIRED> Name => Str

The name of the RestApi.



=head2 Version => Str

A version identifier for the API.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRestApi in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

