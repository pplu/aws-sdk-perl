
package Paws::SageMaker::ListCodeRepositoriesOutput;
  use Moose;
  has CodeRepositorySummaryList => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::CodeRepositorySummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListCodeRepositoriesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeRepositorySummaryList => ArrayRef[L<Paws::SageMaker::CodeRepositorySummary>]

Gets a list of summaries of the Git repositories. Each summary
specifies the following values for the repository:

=over

=item *

Name

=item *

Amazon Resource Name (ARN)

=item *

Creation time

=item *

Last modified time

=item *

Configuration information, including the URL location of the repository
and the ARN of the AWS Secrets Manager secret that contains the
credentials used to access the repository.

=back



=head2 NextToken => Str

If the result of a C<ListCodeRepositoriesOutput> request was truncated,
the response includes a C<NextToken>. To get the next set of Git
repositories, use the token in the next request.


=head2 _request_id => Str


=cut

1;