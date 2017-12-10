
package Paws::CodeCommit::ListPullRequestsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PullRequestIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'pullRequestIds' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ListPullRequestsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that when provided in a request, returns the next
batch of the results.


=head2 B<REQUIRED> PullRequestIds => ArrayRef[Str|Undef]

The system-generated IDs of the pull requests.


=head2 _request_id => Str


=cut

1;