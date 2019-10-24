
package Paws::ApiGatewayV2::CreateModelResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw//;
  has ContentType => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has ModelId => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Schema => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Schema' => {
                             'type' => 'Str'
                           },
               'ContentType' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ModelId' => {
                              'type' => 'Str'
                            },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Schema' => 'schema',
                       'ContentType' => 'contentType',
                       'ModelId' => 'modelId',
                       'Name' => 'name',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateModelResponse

=head1 ATTRIBUTES


=head2 ContentType => Str

The content-type for the model, for example, "application/json".


=head2 Description => Str

The description of the model.


=head2 ModelId => Str

The model identifier.


=head2 Name => Str

The name of the model. Must be alphanumeric.


=head2 Schema => Str

The schema for the model. For application/json models, this should be
JSON schema draft 4 model.


=head2 _request_id => Str


=cut

