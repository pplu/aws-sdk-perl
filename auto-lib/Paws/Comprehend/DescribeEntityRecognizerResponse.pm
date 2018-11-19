
package Paws::Comprehend::DescribeEntityRecognizerResponse;
  use Moose;
  has EntityRecognizerProperties => (is => 'ro', isa => 'Paws::Comprehend::EntityRecognizerProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeEntityRecognizerResponse

=head1 ATTRIBUTES


=head2 EntityRecognizerProperties => L<Paws::Comprehend::EntityRecognizerProperties>

Describes information associated with an entity recognizer.


=head2 _request_id => Str


=cut

1;