package Paws::CodeCommit;
  use Moose;
  sub service { 'codecommit' }
  sub signing_name { 'codecommit' }
  sub version { '2015-04-13' }
  sub target_prefix { 'CodeCommit_20150413' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchGetRepositories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::BatchGetRepositories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBranch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::CreateBranch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePullRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::CreatePullRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::CreateRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBranch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::DeleteBranch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCommentContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::DeleteCommentContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::DeleteFile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::DeleteRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePullRequestEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::DescribePullRequestEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBlob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetBlob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBranch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetBranch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetComment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCommentsForComparedCommit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetCommentsForComparedCommit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCommentsForPullRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetCommentsForPullRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCommit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetCommit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDifferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetDifferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetFile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFolder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetFolder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMergeConflicts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetMergeConflicts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPullRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetPullRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRepositoryTriggers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetRepositoryTriggers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBranches {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::ListBranches', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPullRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::ListPullRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRepositories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::ListRepositories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MergePullRequestByFastForward {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::MergePullRequestByFastForward', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PostCommentForComparedCommit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::PostCommentForComparedCommit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PostCommentForPullRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::PostCommentForPullRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PostCommentReply {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::PostCommentReply', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutFile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::PutFile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRepositoryTriggers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::PutRepositoryTriggers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestRepositoryTriggers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::TestRepositoryTriggers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateComment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdateComment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDefaultBranch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdateDefaultBranch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePullRequestDescription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdatePullRequestDescription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePullRequestStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdatePullRequestStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePullRequestTitle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdatePullRequestTitle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRepositoryDescription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdateRepositoryDescription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRepositoryName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdateRepositoryName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllPullRequestEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribePullRequestEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribePullRequestEvents(@_, nextToken => $next_result->nextToken);
        push @{ $result->pullRequestEvents }, @{ $next_result->pullRequestEvents };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'pullRequestEvents') foreach (@{ $result->pullRequestEvents });
        $result = $self->DescribePullRequestEvents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'pullRequestEvents') foreach (@{ $result->pullRequestEvents });
    }

    return undef
  }
  sub GetAllCommentsForComparedCommit {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetCommentsForComparedCommit(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetCommentsForComparedCommit(@_, nextToken => $next_result->nextToken);
        push @{ $result->commentsForComparedCommitData }, @{ $next_result->commentsForComparedCommitData };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'commentsForComparedCommitData') foreach (@{ $result->commentsForComparedCommitData });
        $result = $self->GetCommentsForComparedCommit(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'commentsForComparedCommitData') foreach (@{ $result->commentsForComparedCommitData });
    }

    return undef
  }
  sub GetAllCommentsForPullRequest {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetCommentsForPullRequest(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetCommentsForPullRequest(@_, nextToken => $next_result->nextToken);
        push @{ $result->commentsForPullRequestData }, @{ $next_result->commentsForPullRequestData };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'commentsForPullRequestData') foreach (@{ $result->commentsForPullRequestData });
        $result = $self->GetCommentsForPullRequest(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'commentsForPullRequestData') foreach (@{ $result->commentsForPullRequestData });
    }

    return undef
  }
  sub GetAllDifferences {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDifferences(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetDifferences(@_, NextToken => $next_result->NextToken);
        push @{ $result->differences }, @{ $next_result->differences };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'differences') foreach (@{ $result->differences });
        $result = $self->GetDifferences(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'differences') foreach (@{ $result->differences });
    }

    return undef
  }
  sub ListAllBranches {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBranches(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBranches(@_, nextToken => $next_result->nextToken);
        push @{ $result->branches }, @{ $next_result->branches };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'branches') foreach (@{ $result->branches });
        $result = $self->ListBranches(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'branches') foreach (@{ $result->branches });
    }

    return undef
  }
  sub ListAllPullRequests {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPullRequests(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPullRequests(@_, nextToken => $next_result->nextToken);
        push @{ $result->pullRequestIds }, @{ $next_result->pullRequestIds };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'pullRequestIds') foreach (@{ $result->pullRequestIds });
        $result = $self->ListPullRequests(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'pullRequestIds') foreach (@{ $result->pullRequestIds });
    }

    return undef
  }
  sub ListAllRepositories {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRepositories(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRepositories(@_, nextToken => $next_result->nextToken);
        push @{ $result->repositories }, @{ $next_result->repositories };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'repositories') foreach (@{ $result->repositories });
        $result = $self->ListRepositories(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'repositories') foreach (@{ $result->repositories });
    }

    return undef
  }


  sub operations { qw/BatchGetRepositories CreateBranch CreatePullRequest CreateRepository DeleteBranch DeleteCommentContent DeleteFile DeleteRepository DescribePullRequestEvents GetBlob GetBranch GetComment GetCommentsForComparedCommit GetCommentsForPullRequest GetCommit GetDifferences GetFile GetFolder GetMergeConflicts GetPullRequest GetRepository GetRepositoryTriggers ListBranches ListPullRequests ListRepositories MergePullRequestByFastForward PostCommentForComparedCommit PostCommentForPullRequest PostCommentReply PutFile PutRepositoryTriggers TestRepositoryTriggers UpdateComment UpdateDefaultBranch UpdatePullRequestDescription UpdatePullRequestStatus UpdatePullRequestTitle UpdateRepositoryDescription UpdateRepositoryName / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit - Perl Interface to AWS AWS CodeCommit

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CodeCommit');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS CodeCommit

This is the I<AWS CodeCommit API Reference>. This reference provides
descriptions of the operations and data types for AWS CodeCommit API
along with usage examples.

You can use the AWS CodeCommit API to work with the following objects:

Repositories, by calling the following:

=over

=item *

BatchGetRepositories, which returns information about one or more
repositories associated with your AWS account.

=item *

CreateRepository, which creates an AWS CodeCommit repository.

=item *

DeleteRepository, which deletes an AWS CodeCommit repository.

=item *

GetRepository, which returns information about a specified repository.

=item *

ListRepositories, which lists all AWS CodeCommit repositories
associated with your AWS account.

=item *

UpdateRepositoryDescription, which sets or updates the description of
the repository.

=item *

UpdateRepositoryName, which changes the name of the repository. If you
change the name of a repository, no other users of that repository will
be able to access it until you send them the new HTTPS or SSH URL to
use.

=back

Branches, by calling the following:

=over

=item *

CreateBranch, which creates a new branch in a specified repository.

=item *

DeleteBranch, which deletes the specified branch in a repository unless
it is the default branch.

=item *

GetBranch, which returns information about a specified branch.

=item *

ListBranches, which lists all branches for a specified repository.

=item *

UpdateDefaultBranch, which changes the default branch for a repository.

=back

Files, by calling the following:

=over

=item *

DeleteFile, which deletes the content of a specified file from a
specified branch.

=item *

GetFile, which returns the base-64 encoded content of a specified file.

=item *

GetFolder, which returns the contents of a specified folder or
directory.

=item *

PutFile, which adds or modifies a file in a specified repository and
branch.

=back

Information about committed code in a repository, by calling the
following:

=over

=item *

GetBlob, which returns the base-64 encoded content of an individual Git
blob object within a repository.

=item *

GetCommit, which returns information about a commit, including commit
messages and author and committer information.

=item *

GetDifferences, which returns information about the differences in a
valid commit specifier (such as a branch, tag, HEAD, commit ID or other
fully qualified reference).

=back

Pull requests, by calling the following:

=over

=item *

CreatePullRequest, which creates a pull request in a specified
repository.

=item *

DescribePullRequestEvents, which returns information about one or more
pull request events.

=item *

GetCommentsForPullRequest, which returns information about comments on
a specified pull request.

=item *

GetMergeConflicts, which returns information about merge conflicts
between the source and destination branch in a pull request.

=item *

GetPullRequest, which returns information about a specified pull
request.

=item *

ListPullRequests, which lists all pull requests for a repository.

=item *

MergePullRequestByFastForward, which merges the source destination
branch of a pull request into the specified destination branch for that
pull request using the fast-forward merge option.

=item *

PostCommentForPullRequest, which posts a comment to a pull request at
the specified line, file, or request.

=item *

UpdatePullRequestDescription, which updates the description of a pull
request.

=item *

UpdatePullRequestStatus, which updates the status of a pull request.

=item *

UpdatePullRequestTitle, which updates the title of a pull request.

=back

Information about comments in a repository, by calling the following:

=over

=item *

DeleteCommentContent, which deletes the content of a comment on a
commit in a repository.

=item *

GetComment, which returns information about a comment on a commit.

=item *

GetCommentsForComparedCommit, which returns information about comments
on the comparison between two commit specifiers in a repository.

=item *

PostCommentForComparedCommit, which creates a comment on the comparison
between two commit specifiers in a repository.

=item *

PostCommentReply, which creates a reply to a comment.

=item *

UpdateComment, which updates the content of a comment on a commit in a
repository.

=back

Triggers, by calling the following:

=over

=item *

GetRepositoryTriggers, which returns information about triggers
configured for a repository.

=item *

PutRepositoryTriggers, which replaces all triggers for a repository and
can be used to create or delete triggers.

=item *

TestRepositoryTriggers, which tests the functionality of a repository
trigger by sending data to the trigger target.

=back

For information about how to use AWS CodeCommit, see the AWS CodeCommit
User Guide
(http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13>


=head1 METHODS

=head2 BatchGetRepositories

=over

=item RepositoryNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeCommit::BatchGetRepositories>

Returns: a L<Paws::CodeCommit::BatchGetRepositoriesOutput> instance

Returns information about one or more repositories.

The description field for a repository accepts all HTML characters and
all valid Unicode characters. Applications that do not HTML-encode the
description and display it in a web page could expose users to
potentially malicious code. Make sure that you HTML-encode the
description field in any application that uses this API to display the
repository description on a web page.


=head2 CreateBranch

=over

=item BranchName => Str

=item CommitId => Str

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::CreateBranch>

Returns: nothing

Creates a new branch in a repository and points the branch to a commit.

Calling the create branch operation does not set a repository's default
branch. To do this, call the update default branch operation.


=head2 CreatePullRequest

=over

=item Targets => ArrayRef[L<Paws::CodeCommit::Target>]

=item Title => Str

=item [ClientRequestToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::CreatePullRequest>

Returns: a L<Paws::CodeCommit::CreatePullRequestOutput> instance

Creates a pull request in the specified repository.


=head2 CreateRepository

=over

=item RepositoryName => Str

=item [RepositoryDescription => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::CreateRepository>

Returns: a L<Paws::CodeCommit::CreateRepositoryOutput> instance

Creates a new, empty repository.


=head2 DeleteBranch

=over

=item BranchName => Str

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::DeleteBranch>

Returns: a L<Paws::CodeCommit::DeleteBranchOutput> instance

Deletes a branch from a repository, unless that branch is the default
branch for the repository.


=head2 DeleteCommentContent

=over

=item CommentId => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::DeleteCommentContent>

Returns: a L<Paws::CodeCommit::DeleteCommentContentOutput> instance

Deletes the content of a comment made on a change, file, or commit in a
repository.


=head2 DeleteFile

=over

=item BranchName => Str

=item FilePath => Str

=item ParentCommitId => Str

=item RepositoryName => Str

=item [CommitMessage => Str]

=item [Email => Str]

=item [KeepEmptyFolders => Bool]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::DeleteFile>

Returns: a L<Paws::CodeCommit::DeleteFileOutput> instance

Deletes a specified file from a specified branch. A commit is created
on the branch that contains the revision. The file will still exist in
the commits prior to the commit that contains the deletion.


=head2 DeleteRepository

=over

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::DeleteRepository>

Returns: a L<Paws::CodeCommit::DeleteRepositoryOutput> instance

Deletes a repository. If a specified repository was already deleted, a
null repository ID will be returned.

Deleting a repository also deletes all associated objects and metadata.
After a repository is deleted, all future push calls to the deleted
repository will fail.


=head2 DescribePullRequestEvents

=over

=item PullRequestId => Str

=item [ActorArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PullRequestEventType => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::DescribePullRequestEvents>

Returns: a L<Paws::CodeCommit::DescribePullRequestEventsOutput> instance

Returns information about one or more pull request events.


=head2 GetBlob

=over

=item BlobId => Str

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetBlob>

Returns: a L<Paws::CodeCommit::GetBlobOutput> instance

Returns the base-64 encoded content of an individual blob within a
repository.


=head2 GetBranch

=over

=item [BranchName => Str]

=item [RepositoryName => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetBranch>

Returns: a L<Paws::CodeCommit::GetBranchOutput> instance

Returns information about a repository branch, including its name and
the last commit ID.


=head2 GetComment

=over

=item CommentId => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetComment>

Returns: a L<Paws::CodeCommit::GetCommentOutput> instance

Returns the content of a comment made on a change, file, or commit in a
repository.


=head2 GetCommentsForComparedCommit

=over

=item AfterCommitId => Str

=item RepositoryName => Str

=item [BeforeCommitId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetCommentsForComparedCommit>

Returns: a L<Paws::CodeCommit::GetCommentsForComparedCommitOutput> instance

Returns information about comments made on the comparison between two
commits.


=head2 GetCommentsForPullRequest

=over

=item PullRequestId => Str

=item [AfterCommitId => Str]

=item [BeforeCommitId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RepositoryName => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetCommentsForPullRequest>

Returns: a L<Paws::CodeCommit::GetCommentsForPullRequestOutput> instance

Returns comments made on a pull request.


=head2 GetCommit

=over

=item CommitId => Str

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetCommit>

Returns: a L<Paws::CodeCommit::GetCommitOutput> instance

Returns information about a commit, including commit message and
committer information.


=head2 GetDifferences

=over

=item AfterCommitSpecifier => Str

=item RepositoryName => Str

=item [AfterPath => Str]

=item [BeforeCommitSpecifier => Str]

=item [BeforePath => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetDifferences>

Returns: a L<Paws::CodeCommit::GetDifferencesOutput> instance

Returns information about the differences in a valid commit specifier
(such as a branch, tag, HEAD, commit ID or other fully qualified
reference). Results can be limited to a specified path.


=head2 GetFile

=over

=item FilePath => Str

=item RepositoryName => Str

=item [CommitSpecifier => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetFile>

Returns: a L<Paws::CodeCommit::GetFileOutput> instance

Returns the base-64 encoded contents of a specified file and its
metadata.


=head2 GetFolder

=over

=item FolderPath => Str

=item RepositoryName => Str

=item [CommitSpecifier => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetFolder>

Returns: a L<Paws::CodeCommit::GetFolderOutput> instance

Returns the contents of a specified folder in a repository.


=head2 GetMergeConflicts

=over

=item DestinationCommitSpecifier => Str

=item MergeOption => Str

=item RepositoryName => Str

=item SourceCommitSpecifier => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetMergeConflicts>

Returns: a L<Paws::CodeCommit::GetMergeConflictsOutput> instance

Returns information about merge conflicts between the before and after
commit IDs for a pull request in a repository.


=head2 GetPullRequest

=over

=item PullRequestId => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetPullRequest>

Returns: a L<Paws::CodeCommit::GetPullRequestOutput> instance

Gets information about a pull request in a specified repository.


=head2 GetRepository

=over

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetRepository>

Returns: a L<Paws::CodeCommit::GetRepositoryOutput> instance

Returns information about a repository.

The description field for a repository accepts all HTML characters and
all valid Unicode characters. Applications that do not HTML-encode the
description and display it in a web page could expose users to
potentially malicious code. Make sure that you HTML-encode the
description field in any application that uses this API to display the
repository description on a web page.


=head2 GetRepositoryTriggers

=over

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetRepositoryTriggers>

Returns: a L<Paws::CodeCommit::GetRepositoryTriggersOutput> instance

Gets information about triggers configured for a repository.


=head2 ListBranches

=over

=item RepositoryName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::ListBranches>

Returns: a L<Paws::CodeCommit::ListBranchesOutput> instance

Gets information about one or more branches in a repository.


=head2 ListPullRequests

=over

=item RepositoryName => Str

=item [AuthorArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PullRequestStatus => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::ListPullRequests>

Returns: a L<Paws::CodeCommit::ListPullRequestsOutput> instance

Returns a list of pull requests for a specified repository. The return
list can be refined by pull request status or pull request author ARN.


=head2 ListRepositories

=over

=item [NextToken => Str]

=item [Order => Str]

=item [SortBy => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::ListRepositories>

Returns: a L<Paws::CodeCommit::ListRepositoriesOutput> instance

Gets information about one or more repositories.


=head2 MergePullRequestByFastForward

=over

=item PullRequestId => Str

=item RepositoryName => Str

=item [SourceCommitId => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::MergePullRequestByFastForward>

Returns: a L<Paws::CodeCommit::MergePullRequestByFastForwardOutput> instance

Closes a pull request and attempts to merge the source commit of a pull
request into the specified destination branch for that pull request at
the specified commit using the fast-forward merge option.


=head2 PostCommentForComparedCommit

=over

=item AfterCommitId => Str

=item Content => Str

=item RepositoryName => Str

=item [BeforeCommitId => Str]

=item [ClientRequestToken => Str]

=item [Location => L<Paws::CodeCommit::Location>]


=back

Each argument is described in detail in: L<Paws::CodeCommit::PostCommentForComparedCommit>

Returns: a L<Paws::CodeCommit::PostCommentForComparedCommitOutput> instance

Posts a comment on the comparison between two commits.


=head2 PostCommentForPullRequest

=over

=item AfterCommitId => Str

=item BeforeCommitId => Str

=item Content => Str

=item PullRequestId => Str

=item RepositoryName => Str

=item [ClientRequestToken => Str]

=item [Location => L<Paws::CodeCommit::Location>]


=back

Each argument is described in detail in: L<Paws::CodeCommit::PostCommentForPullRequest>

Returns: a L<Paws::CodeCommit::PostCommentForPullRequestOutput> instance

Posts a comment on a pull request.


=head2 PostCommentReply

=over

=item Content => Str

=item InReplyTo => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::PostCommentReply>

Returns: a L<Paws::CodeCommit::PostCommentReplyOutput> instance

Posts a comment in reply to an existing comment on a comparison between
commits or a pull request.


=head2 PutFile

=over

=item BranchName => Str

=item FileContent => Str

=item FilePath => Str

=item RepositoryName => Str

=item [CommitMessage => Str]

=item [Email => Str]

=item [FileMode => Str]

=item [Name => Str]

=item [ParentCommitId => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::PutFile>

Returns: a L<Paws::CodeCommit::PutFileOutput> instance

Adds or updates a file in a branch in an AWS CodeCommit repository, and
generates a commit for the addition in the specified branch.


=head2 PutRepositoryTriggers

=over

=item RepositoryName => Str

=item Triggers => ArrayRef[L<Paws::CodeCommit::RepositoryTrigger>]


=back

Each argument is described in detail in: L<Paws::CodeCommit::PutRepositoryTriggers>

Returns: a L<Paws::CodeCommit::PutRepositoryTriggersOutput> instance

Replaces all triggers for a repository. This can be used to create or
delete triggers.


=head2 TestRepositoryTriggers

=over

=item RepositoryName => Str

=item Triggers => ArrayRef[L<Paws::CodeCommit::RepositoryTrigger>]


=back

Each argument is described in detail in: L<Paws::CodeCommit::TestRepositoryTriggers>

Returns: a L<Paws::CodeCommit::TestRepositoryTriggersOutput> instance

Tests the functionality of repository triggers by sending information
to the trigger target. If real data is available in the repository, the
test will send data from the last commit. If no data is available,
sample data will be generated.


=head2 UpdateComment

=over

=item CommentId => Str

=item Content => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdateComment>

Returns: a L<Paws::CodeCommit::UpdateCommentOutput> instance

Replaces the contents of a comment.


=head2 UpdateDefaultBranch

=over

=item DefaultBranchName => Str

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdateDefaultBranch>

Returns: nothing

Sets or changes the default branch name for the specified repository.

If you use this operation to change the default branch name to the
current default branch name, a success message is returned even though
the default branch did not change.


=head2 UpdatePullRequestDescription

=over

=item Description => Str

=item PullRequestId => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdatePullRequestDescription>

Returns: a L<Paws::CodeCommit::UpdatePullRequestDescriptionOutput> instance

Replaces the contents of the description of a pull request.


=head2 UpdatePullRequestStatus

=over

=item PullRequestId => Str

=item PullRequestStatus => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdatePullRequestStatus>

Returns: a L<Paws::CodeCommit::UpdatePullRequestStatusOutput> instance

Updates the status of a pull request.


=head2 UpdatePullRequestTitle

=over

=item PullRequestId => Str

=item Title => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdatePullRequestTitle>

Returns: a L<Paws::CodeCommit::UpdatePullRequestTitleOutput> instance

Replaces the title of a pull request.


=head2 UpdateRepositoryDescription

=over

=item RepositoryName => Str

=item [RepositoryDescription => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdateRepositoryDescription>

Returns: nothing

Sets or changes the comment or description for a repository.

The description field for a repository accepts all HTML characters and
all valid Unicode characters. Applications that do not HTML-encode the
description and display it in a web page could expose users to
potentially malicious code. Make sure that you HTML-encode the
description field in any application that uses this API to display the
repository description on a web page.


=head2 UpdateRepositoryName

=over

=item NewName => Str

=item OldName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdateRepositoryName>

Returns: nothing

Renames a repository. The repository name must be unique across the
calling AWS account. In addition, repository names are limited to 100
alphanumeric, dash, and underscore characters, and cannot include
certain characters. The suffix ".git" is prohibited. For a full
description of the limits on repository names, see Limits
(http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html) in
the AWS CodeCommit User Guide.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllPullRequestEvents(sub { },PullRequestId => Str, [ActorArn => Str, MaxResults => Int, NextToken => Str, PullRequestEventType => Str])

=head2 DescribeAllPullRequestEvents(PullRequestId => Str, [ActorArn => Str, MaxResults => Int, NextToken => Str, PullRequestEventType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - pullRequestEvents, passing the object as the first parameter, and the string 'pullRequestEvents' as the second parameter 

If not, it will return a a L<Paws::CodeCommit::DescribePullRequestEventsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllCommentsForComparedCommit(sub { },AfterCommitId => Str, RepositoryName => Str, [BeforeCommitId => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllCommentsForComparedCommit(AfterCommitId => Str, RepositoryName => Str, [BeforeCommitId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - commentsForComparedCommitData, passing the object as the first parameter, and the string 'commentsForComparedCommitData' as the second parameter 

If not, it will return a a L<Paws::CodeCommit::GetCommentsForComparedCommitOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllCommentsForPullRequest(sub { },PullRequestId => Str, [AfterCommitId => Str, BeforeCommitId => Str, MaxResults => Int, NextToken => Str, RepositoryName => Str])

=head2 GetAllCommentsForPullRequest(PullRequestId => Str, [AfterCommitId => Str, BeforeCommitId => Str, MaxResults => Int, NextToken => Str, RepositoryName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - commentsForPullRequestData, passing the object as the first parameter, and the string 'commentsForPullRequestData' as the second parameter 

If not, it will return a a L<Paws::CodeCommit::GetCommentsForPullRequestOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDifferences(sub { },AfterCommitSpecifier => Str, RepositoryName => Str, [AfterPath => Str, BeforeCommitSpecifier => Str, BeforePath => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllDifferences(AfterCommitSpecifier => Str, RepositoryName => Str, [AfterPath => Str, BeforeCommitSpecifier => Str, BeforePath => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - differences, passing the object as the first parameter, and the string 'differences' as the second parameter 

If not, it will return a a L<Paws::CodeCommit::GetDifferencesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBranches(sub { },RepositoryName => Str, [NextToken => Str])

=head2 ListAllBranches(RepositoryName => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - branches, passing the object as the first parameter, and the string 'branches' as the second parameter 

If not, it will return a a L<Paws::CodeCommit::ListBranchesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPullRequests(sub { },RepositoryName => Str, [AuthorArn => Str, MaxResults => Int, NextToken => Str, PullRequestStatus => Str])

=head2 ListAllPullRequests(RepositoryName => Str, [AuthorArn => Str, MaxResults => Int, NextToken => Str, PullRequestStatus => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - pullRequestIds, passing the object as the first parameter, and the string 'pullRequestIds' as the second parameter 

If not, it will return a a L<Paws::CodeCommit::ListPullRequestsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRepositories(sub { },[NextToken => Str, Order => Str, SortBy => Str])

=head2 ListAllRepositories([NextToken => Str, Order => Str, SortBy => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - repositories, passing the object as the first parameter, and the string 'repositories' as the second parameter 

If not, it will return a a L<Paws::CodeCommit::ListRepositoriesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

