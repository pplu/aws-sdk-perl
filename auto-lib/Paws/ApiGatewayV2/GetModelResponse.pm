
package Paws::ApiGatewayV2::GetModelResponse;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentType');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelId');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Schema => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'schema');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetModelResponse

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

