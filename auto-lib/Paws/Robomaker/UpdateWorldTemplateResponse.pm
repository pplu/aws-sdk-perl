
package Paws::Robomaker::UpdateWorldTemplateResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::UpdateWorldTemplateResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (arn) of the world template.


=head2 CreatedAt => Str

The time, in milliseconds since the epoch, when the world template was
created.


=head2 LastUpdatedAt => Str

The time, in milliseconds since the epoch, when the world template was
last updated.


=head2 Name => Str

The name of the world template.


=head2 _request_id => Str


=cut

