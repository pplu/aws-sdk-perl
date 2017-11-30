
package Paws::SageMaker::CreateNotebookInstanceOutput;
  use Moose;
  has NotebookInstanceArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateNotebookInstanceOutput

=head1 ATTRIBUTES


=head2 NotebookInstanceArn => Str

The Amazon Resource Name (ARN) of the notebook instance.


=head2 _request_id => Str


=cut

1;