
package Paws::ApiGateway::RestApi;
  use Moose;
  has BinaryMediaTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
  has Warnings => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::RestApi

=head1 ATTRIBUTES


=head2 BinaryMediaTypes => ArrayRef[Str|Undef]

The list of binary media types supported by the RestApi. By default,
the RestApi supports only UTF-8-encoded text payloads.


=head2 CreatedDate => Str

The date when the API was created, in ISO 8601 format.


=head2 Description => Str

The API's description.


=head2 Id => Str

The API's identifier. This identifier is unique across all of your APIs
in Amazon API Gateway.


=head2 Name => Str

The API's name.


=head2 Version => Str

A version identifier for the API.


=head2 Warnings => ArrayRef[Str|Undef]

The warning messages reported when C<failonwarnings> is turned on
during API import.


=head2 _request_id => Str


=cut

