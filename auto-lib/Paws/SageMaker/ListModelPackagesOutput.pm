
package Paws::SageMaker::ListModelPackagesOutput;
  use Moose;
  has ModelPackageSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ModelPackageSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListModelPackagesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelPackageSummaryList => ArrayRef[L<Paws::SageMaker::ModelPackageSummary>]

An array of C<ModelPackageSummary> objects, each of which lists a model
package.


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of model packages, use it in the subsequent
request.


=head2 _request_id => Str


=cut

1;