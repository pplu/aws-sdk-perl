
package Paws::SageMaker::ListModelPackageGroupsOutput;
  use Moose;
  has ModelPackageGroupSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ModelPackageGroupSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListModelPackageGroupsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelPackageGroupSummaryList => ArrayRef[L<Paws::SageMaker::ModelPackageGroupSummary>]

A list of summaries of the model groups in your Amazon Web Services
account.


=head2 NextToken => Str

If the response is truncated, SageMaker returns this token. To retrieve
the next set of model groups, use it in the subsequent request.


=head2 _request_id => Str


=cut

1;