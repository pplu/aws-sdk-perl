
package Paws::SageMaker::CreatePresignedNotebookInstanceUrlOutput;
  use Moose;
  has AuthorizedUrl => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreatePresignedNotebookInstanceUrlOutput

=head1 ATTRIBUTES


=head2 AuthorizedUrl => Str

A JSON object that contains the URL string.


=head2 _request_id => Str


=cut

1;