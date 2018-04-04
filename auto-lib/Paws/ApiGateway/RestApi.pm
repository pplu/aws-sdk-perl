
package Paws::ApiGateway::RestApi;
  use Moose;
  has ApiKeySource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiKeySource');
  has BinaryMediaTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'binaryMediaTypes');
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EndpointConfiguration => (is => 'ro', isa => 'Paws::ApiGateway::EndpointConfiguration', traits => ['NameInRequest'], request_name => 'endpointConfiguration');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has MinimumCompressionSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'minimumCompressionSize');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');
  has Warnings => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'warnings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::RestApi

=head1 ATTRIBUTES


=head2 ApiKeySource => Str

The source of the API key for metering requests according to a usage
plan. Valid values are:

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


=head2 CreatedDate => Str

The timestamp when the API was created.


=head2 Description => Str

The API's description.


=head2 EndpointConfiguration => L<Paws::ApiGateway::EndpointConfiguration>

The endpoint configuration of this RestApi showing the endpoint types
of the API.


=head2 Id => Str

The API's identifier. This identifier is unique across all of your APIs
in API Gateway.


=head2 MinimumCompressionSize => Int

A nullable integer that is used to enable compression (with
non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable
compression (with a null value) on an API. When compression is enabled,
compression or decompression is not applied on the payload if the
payload size is smaller than this value. Setting it to zero allows
compression for any payload size.


=head2 Name => Str

The API's name.


=head2 Policy => Str

A stringified JSON policy document that applies to this RestApi
regardless of the caller and Method configuration.


=head2 Version => Str

A version identifier for the API.


=head2 Warnings => ArrayRef[Str|Undef]

The warning messages reported when C<failonwarnings> is turned on
during API import.


=head2 _request_id => Str


=cut

