
package Paws::CodeCommit::DescribePullRequestEventsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PullRequestEvents => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::PullRequestEvent]', traits => ['NameInRequest'], request_name => 'pullRequestEvents' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DescribePullRequestEventsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 B<REQUIRED> PullRequestEvents => ArrayRef[L<Paws::CodeCommit::PullRequestEvent>]

Information about the pull request events.


=head2 _request_id => Str


=cut

1;