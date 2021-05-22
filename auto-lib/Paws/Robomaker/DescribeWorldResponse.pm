
package Paws::Robomaker::DescribeWorldResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has GenerationJob => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'generationJob');
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Template => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'template');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DescribeWorldResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (arn) of the world.


=head2 CreatedAt => Str

The time, in milliseconds since the epoch, when the world was created.


=head2 GenerationJob => Str

The Amazon Resource Name (arn) of the world generation job that
generated the world.


=head2 Tags => L<Paws::Robomaker::TagMap>

A map that contains tag keys and tag values that are attached to the
world.


=head2 Template => Str

The world template.


=head2 _request_id => Str


=cut

