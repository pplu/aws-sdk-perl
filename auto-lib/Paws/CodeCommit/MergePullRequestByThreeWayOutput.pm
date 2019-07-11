
package Paws::CodeCommit::MergePullRequestByThreeWayOutput;
  use Moose;
  has PullRequest => (is => 'ro', isa => 'Paws::CodeCommit::PullRequest', traits => ['NameInRequest'], request_name => 'pullRequest' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::MergePullRequestByThreeWayOutput

=head1 ATTRIBUTES


=head2 PullRequest => L<Paws::CodeCommit::PullRequest>




=head2 _request_id => Str


=cut

1;