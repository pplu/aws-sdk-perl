package Paws::CodeCommit::PullRequestSourceReferenceUpdatedEventMetadata;
  use Moose;
  has AfterCommitId => (is => 'ro', isa => 'Str', request_name => 'afterCommitId', traits => ['NameInRequest']);
  has BeforeCommitId => (is => 'ro', isa => 'Str', request_name => 'beforeCommitId', traits => ['NameInRequest']);
  has MergeBase => (is => 'ro', isa => 'Str', request_name => 'mergeBase', traits => ['NameInRequest']);
  has RepositoryName => (is => 'ro', isa => 'Str', request_name => 'repositoryName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PullRequestSourceReferenceUpdatedEventMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::PullRequestSourceReferenceUpdatedEventMetadata object:

  $service_obj->Method(Att1 => { AfterCommitId => $value, ..., RepositoryName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::PullRequestSourceReferenceUpdatedEventMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->AfterCommitId

=head1 DESCRIPTION

Information about an update to the source branch of a pull request.

=head1 ATTRIBUTES


=head2 AfterCommitId => Str

  The full commit ID of the commit in the source branch that was the tip
of the branch at the time the pull request was updated.


=head2 BeforeCommitId => Str

  The full commit ID of the commit in the destination branch that was the
tip of the branch at the time the pull request was updated.


=head2 MergeBase => Str

  The commit ID of the most recent commit that the source branch and the
destination branch have in common.


=head2 RepositoryName => Str

  The name of the repository where the pull request was updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

