
package Paws::Comprehend::CreateEntityRecognizerResponse;
  use Moose;
  has EntityRecognizerArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::CreateEntityRecognizerResponse

=head1 ATTRIBUTES


=head2 EntityRecognizerArn => Str

The Amazon Resource Name (ARN) that identifies the entity recognizer.


=head2 _request_id => Str


=cut

1;