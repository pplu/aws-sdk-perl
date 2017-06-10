package Paws::CodeCommit;
  use Moose;
  sub service { 'codecommit' }
  sub version { '2015-04-13' }
  sub target_prefix { 'CodeCommit_20150413' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
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
  sub CreateRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::CreateRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::DeleteRepository', @_);
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
  sub ListRepositories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::ListRepositories', @_);
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
  sub UpdateDefaultBranch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdateDefaultBranch', @_);
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
  
  sub ListAllBranches {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBranches(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $result = $self->ListBranches(@_, nextToken => $result->nextToken);
        push @{ $result->branches }, @{ $next_result->branches };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListBranches(@_, nextToken => $result->nextToken);
        $callback->($_ => 'branches') foreach (@{ $result->branches });
      }
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
        $result = $self->ListRepositories(@_, nextToken => $result->nextToken);
        push @{ $result->repositories }, @{ $next_result->repositories };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListRepositories(@_, nextToken => $result->nextToken);
        $callback->($_ => 'repositories') foreach (@{ $result->repositories });
      }
    }

    return undef
  }


  sub operations { qw/BatchGetRepositories CreateBranch CreateRepository DeleteRepository GetBlob GetBranch GetCommit GetDifferences GetRepository GetRepositoryTriggers ListBranches ListRepositories PutRepositoryTriggers TestRepositoryTriggers UpdateDefaultBranch UpdateRepositoryDescription UpdateRepositoryName / }

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
repositories associated with your AWS account

=item *

CreateRepository, which creates an AWS CodeCommit repository

=item *

DeleteRepository, which deletes an AWS CodeCommit repository

=item *

GetRepository, which returns information about a specified repository

=item *

ListRepositories, which lists all AWS CodeCommit repositories
associated with your AWS account

=item *

UpdateRepositoryDescription, which sets or updates the description of
the repository

=item *

UpdateRepositoryName, which changes the name of the repository. If you
change the name of a repository, no other users of that repository will
be able to access it until you send them the new HTTPS or SSH URL to
use.

=back

Branches, by calling the following:

=over

=item *

CreateBranch, which creates a new branch in a specified repository

=item *

GetBranch, which returns information about a specified branch

=item *

ListBranches, which lists all branches for a specified repository

=item *

UpdateDefaultBranch, which changes the default branch for a repository

=back

Information about committed code in a repository, by calling the
following:

=over

=item *

GetBlob, which returns the base-64 encoded content of an individual Git
blob object within a repository

=item *

GetCommit, which returns information about a commit, including commit
messages and author and committer information

=item *

GetDifferences, which returns information about the differences in a
valid commit specifier (such as a branch, tag, HEAD, commit ID or other
fully qualified reference)

=back

Triggers, by calling the following:

=over

=item *

GetRepositoryTriggers, which returns information about triggers
configured for a repository

=item *

PutRepositoryTriggers, which replaces all triggers for a repository and
can be used to create or delete triggers

=item *

TestRepositoryTriggers, which tests the functionality of a repository
trigger by sending data to the trigger target

=back

For information about how to use AWS CodeCommit, see the AWS CodeCommit
User Guide.

=head1 METHODS

=head2 BatchGetRepositories(RepositoryNames => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::CodeCommit::BatchGetRepositories>

Returns: a L<Paws::CodeCommit::BatchGetRepositoriesOutput> instance

  Returns information about one or more repositories.

The description field for a repository accepts all HTML characters and
all valid Unicode characters. Applications that do not HTML-encode the
description and display it in a web page could expose users to
potentially malicious code. Make sure that you HTML-encode the
description field in any application that uses this API to display the
repository description on a web page.


=head2 CreateBranch(BranchName => Str, CommitId => Str, RepositoryName => Str)

Each argument is described in detail in: L<Paws::CodeCommit::CreateBranch>

Returns: nothing

  Creates a new branch in a repository and points the branch to a commit.

Calling the create branch operation does not set a repository's default
branch. To do this, call the update default branch operation.


=head2 CreateRepository(RepositoryName => Str, [RepositoryDescription => Str])

Each argument is described in detail in: L<Paws::CodeCommit::CreateRepository>

Returns: a L<Paws::CodeCommit::CreateRepositoryOutput> instance

  Creates a new, empty repository.


=head2 DeleteRepository(RepositoryName => Str)

Each argument is described in detail in: L<Paws::CodeCommit::DeleteRepository>

Returns: a L<Paws::CodeCommit::DeleteRepositoryOutput> instance

  Deletes a repository. If a specified repository was already deleted, a
null repository ID will be returned.

Deleting a repository also deletes all associated objects and metadata.
After a repository is deleted, all future push calls to the deleted
repository will fail.


=head2 GetBlob(BlobId => Str, RepositoryName => Str)

Each argument is described in detail in: L<Paws::CodeCommit::GetBlob>

Returns: a L<Paws::CodeCommit::GetBlobOutput> instance

  Returns the base-64 encoded content of an individual blob within a
repository.


=head2 GetBranch([BranchName => Str, RepositoryName => Str])

Each argument is described in detail in: L<Paws::CodeCommit::GetBranch>

Returns: a L<Paws::CodeCommit::GetBranchOutput> instance

  Returns information about a repository branch, including its name and
the last commit ID.


=head2 GetCommit(CommitId => Str, RepositoryName => Str)

Each argument is described in detail in: L<Paws::CodeCommit::GetCommit>

Returns: a L<Paws::CodeCommit::GetCommitOutput> instance

  Returns information about a commit, including commit message and
committer information.


=head2 GetDifferences(AfterCommitSpecifier => Str, RepositoryName => Str, [AfterPath => Str, BeforeCommitSpecifier => Str, BeforePath => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CodeCommit::GetDifferences>

Returns: a L<Paws::CodeCommit::GetDifferencesOutput> instance

  Returns information about the differences in a valid commit specifier
(such as a branch, tag, HEAD, commit ID or other fully qualified
reference). Results can be limited to a specified path.


=head2 GetRepository(RepositoryName => Str)

Each argument is described in detail in: L<Paws::CodeCommit::GetRepository>

Returns: a L<Paws::CodeCommit::GetRepositoryOutput> instance

  Returns information about a repository.

The description field for a repository accepts all HTML characters and
all valid Unicode characters. Applications that do not HTML-encode the
description and display it in a web page could expose users to
potentially malicious code. Make sure that you HTML-encode the
description field in any application that uses this API to display the
repository description on a web page.


=head2 GetRepositoryTriggers(RepositoryName => Str)

Each argument is described in detail in: L<Paws::CodeCommit::GetRepositoryTriggers>

Returns: a L<Paws::CodeCommit::GetRepositoryTriggersOutput> instance

  Gets information about triggers configured for a repository.


=head2 ListBranches(RepositoryName => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::CodeCommit::ListBranches>

Returns: a L<Paws::CodeCommit::ListBranchesOutput> instance

  Gets information about one or more branches in a repository.


=head2 ListRepositories([NextToken => Str, Order => Str, SortBy => Str])

Each argument is described in detail in: L<Paws::CodeCommit::ListRepositories>

Returns: a L<Paws::CodeCommit::ListRepositoriesOutput> instance

  Gets information about one or more repositories.


=head2 PutRepositoryTriggers(RepositoryName => Str, Triggers => ArrayRef[L<Paws::CodeCommit::RepositoryTrigger>])

Each argument is described in detail in: L<Paws::CodeCommit::PutRepositoryTriggers>

Returns: a L<Paws::CodeCommit::PutRepositoryTriggersOutput> instance

  Replaces all triggers for a repository. This can be used to create or
delete triggers.


=head2 TestRepositoryTriggers(RepositoryName => Str, Triggers => ArrayRef[L<Paws::CodeCommit::RepositoryTrigger>])

Each argument is described in detail in: L<Paws::CodeCommit::TestRepositoryTriggers>

Returns: a L<Paws::CodeCommit::TestRepositoryTriggersOutput> instance

  Tests the functionality of repository triggers by sending information
to the trigger target. If real data is available in the repository, the
test will send data from the last commit. If no data is available,
sample data will be generated.


=head2 UpdateDefaultBranch(DefaultBranchName => Str, RepositoryName => Str)

Each argument is described in detail in: L<Paws::CodeCommit::UpdateDefaultBranch>

Returns: nothing

  Sets or changes the default branch name for the specified repository.

If you use this operation to change the default branch name to the
current default branch name, a success message is returned even though
the default branch did not change.


=head2 UpdateRepositoryDescription(RepositoryName => Str, [RepositoryDescription => Str])

Each argument is described in detail in: L<Paws::CodeCommit::UpdateRepositoryDescription>

Returns: nothing

  Sets or changes the comment or description for a repository.

The description field for a repository accepts all HTML characters and
all valid Unicode characters. Applications that do not HTML-encode the
description and display it in a web page could expose users to
potentially malicious code. Make sure that you HTML-encode the
description field in any application that uses this API to display the
repository description on a web page.


=head2 UpdateRepositoryName(NewName => Str, OldName => Str)

Each argument is described in detail in: L<Paws::CodeCommit::UpdateRepositoryName>

Returns: nothing

  Renames a repository. The repository name must be unique across the
calling AWS account. In addition, repository names are limited to 100
alphanumeric, dash, and underscore characters, and cannot include
certain characters. The suffix ".git" is prohibited. For a full
description of the limits on repository names, see Limits in the AWS
CodeCommit User Guide.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllBranches(sub { },RepositoryName => Str, [NextToken => Str])

=head2 ListAllBranches(RepositoryName => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - branches, passing the object as the first parameter, and the string 'branches' as the second parameter 

If not, it will return a a L<Paws::CodeCommit::ListBranchesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRepositories(sub { },[NextToken => Str, Order => Str, SortBy => Str])

=head2 ListAllRepositories([NextToken => Str, Order => Str, SortBy => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - repositories, passing the object as the first parameter, and the string 'repositories' as the second parameter 

If not, it will return a a L<Paws::CodeCommit::ListRepositoriesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

