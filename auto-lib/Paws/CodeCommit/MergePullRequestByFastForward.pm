
package Paws::CodeCommit::MergePullRequestByFastForward;
  use Moose;
  has PullRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pullRequestId' , required => 1);
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);
  has SourceCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceCommitId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'MergePullRequestByFastForward');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::MergePullRequestByFastForwardOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::MergePullRequestByFastForward - Arguments for method MergePullRequestByFastForward on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method MergePullRequestByFastForward on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method MergePullRequestByFastForward.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to MergePullRequestByFastForward.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $MergePullRequestByFastForwardOutput =
      $codecommit->MergePullRequestByFastForward(
      PullRequestId  => 'MyPullRequestId',
      RepositoryName => 'MyRepositoryName',
      SourceCommitId => 'MyCommitId',         # OPTIONAL
      );

    # Results:
    my $PullRequest = $MergePullRequestByFastForwardOutput->PullRequest;

    # Returns a L<Paws::CodeCommit::MergePullRequestByFastForwardOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/MergePullRequestByFastForward>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PullRequestId => Str

The system-generated ID of the pull request. To get this ID, use
ListPullRequests.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository where the pull request was created.



=head2 SourceCommitId => Str

The full commit ID of the original or updated commit in the pull
request source branch. Pass this value if you want an exception thrown
if the current commit ID of the tip of the source branch does not match
this commit ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method MergePullRequestByFastForward in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

