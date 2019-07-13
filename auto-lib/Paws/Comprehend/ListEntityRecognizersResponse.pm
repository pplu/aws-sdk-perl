
package Paws::Comprehend::ListEntityRecognizersResponse;
  use Moose;
  has EntityRecognizerPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::EntityRecognizerProperties]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListEntityRecognizersResponse

=head1 ATTRIBUTES


=head2 EntityRecognizerPropertiesList => ArrayRef[L<Paws::Comprehend::EntityRecognizerProperties>]

The list of properties of an entity recognizer.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;