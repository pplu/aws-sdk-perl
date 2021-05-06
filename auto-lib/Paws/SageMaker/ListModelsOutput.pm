
package Paws::SageMaker::ListModelsOutput;
  use Moose;
  has Models => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ModelSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListModelsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Models => ArrayRef[L<Paws::SageMaker::ModelSummary>]

An array of C<ModelSummary> objects, each of which lists a model.


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of models, use it in the subsequent request.


=head2 _request_id => Str


=cut

1;