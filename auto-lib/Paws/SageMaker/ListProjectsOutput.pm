
package Paws::SageMaker::ListProjectsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProjectSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ProjectSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListProjectsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the result of the previous C<ListCompilationJobs> request was
truncated, the response includes a C<NextToken>. To retrieve the next
set of model compilation jobs, use the token in the next request.


=head2 B<REQUIRED> ProjectSummaryList => ArrayRef[L<Paws::SageMaker::ProjectSummary>]

A list of summaries of projects.


=head2 _request_id => Str


=cut

1;