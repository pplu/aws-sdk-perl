
package Paws::ApiGatewayV2::UpdateApiMappingResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw//;
  has ApiId => (is => 'ro', isa => Str);
  has ApiMappingId => (is => 'ro', isa => Str);
  has ApiMappingKey => (is => 'ro', isa => Str);
  has Stage => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApiMappingKey' => {
                                    'type' => 'Str'
                                  },
               'Stage' => {
                            'type' => 'Str'
                          },
               'ApiMappingId' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ApiId' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'ApiId' => 'apiId',
                       'ApiMappingId' => 'apiMappingId',
                       'Stage' => 'stage',
                       'ApiMappingKey' => 'apiMappingKey'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateApiMappingResponse

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

