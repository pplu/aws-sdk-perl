
package Paws::Robomaker::CreateFleetResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateFleetResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the fleet.


=head2 CreatedAt => Str

The time, in milliseconds since the epoch, when the fleet was created.


=head2 Name => Str

The name of the fleet.


=head2 Tags => L<Paws::Robomaker::TagMap>

The list of all tags added to the fleet.


=head2 _request_id => Str


=cut

