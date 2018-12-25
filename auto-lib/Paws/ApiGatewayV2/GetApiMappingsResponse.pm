
package Paws::ApiGatewayV2::GetApiMappingsResponse;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiId');
  has ApiMappingId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiMappingId');
  has ApiMappingKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiMappingKey');
  has Stage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stage');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetApiMappingsResponse

=head1 ATTRIBUTES


=head2 ApiId => Str

The API identifier.


=head2 ApiMappingId => Str

The API mapping identifier.


=head2 ApiMappingKey => Str

The API mapping key.


=head2 Stage => Str

The API stage.


=head2 _request_id => Str


=cut

