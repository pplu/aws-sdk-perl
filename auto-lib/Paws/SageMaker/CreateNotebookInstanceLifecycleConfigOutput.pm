
package Paws::SageMaker::CreateNotebookInstanceLifecycleConfigOutput;
  use Moose;
  has NotebookInstanceLifecycleConfigArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateNotebookInstanceLifecycleConfigOutput

=head1 ATTRIBUTES


=head2 NotebookInstanceLifecycleConfigArn => Str

The Amazon Resource Name (ARN) of the lifecycle configuration.


=head2 _request_id => Str


=cut

1;