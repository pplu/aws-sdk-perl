package Paws::CodeCommit::PullRequestTarget;
  use Moose;
  has DestinationCommit => (is => 'ro', isa => 'Str', request_name => 'destinationCommit', traits => ['NameInRequest']);
  has DestinationReference => (is => 'ro', isa => 'Str', request_name => 'destinationReference', traits => ['NameInRequest']);
  has MergeBase => (is => 'ro', isa => 'Str', request_name => 'mergeBase', traits => ['NameInRequest']);
  has MergeMetadata => (is => 'ro', isa => 'Paws::CodeCommit::MergeMetadata', request_name => 'mergeMetadata', traits => ['NameInRequest']);
  has RepositoryName => (is => 'ro', isa => 'Str', request_name => 'repositoryName', traits => ['NameInRequest']);
  has SourceCommit => (is => 'ro', isa => 'Str', request_name => 'sourceCommit', traits => ['NameInRequest']);
  has SourceReference => (is => 'ro', isa => 'Str', request_name => 'sourceReference', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PullRequestTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::PullRequestTarget object:

  $service_obj->Method(Att1 => { DestinationCommit => $value, ..., SourceReference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::PullRequestTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationCommit

=head1 DESCRIPTION

Returns information about a pull request target.

=head1 ATTRIBUTES


=head2 DestinationCommit => Str

  The full commit ID that is the tip of the destination branch. This is
the commit where the pull request was or will be merged.


=head2 DestinationReference => Str

  The branch of the repository where the pull request changes will be
merged into. Also known as the destination branch.


=head2 MergeBase => Str

  The commit ID of the most recent commit that the source branch and the
destination branch have in common.


=head2 MergeMetadata => L<Paws::CodeCommit::MergeMetadata>

  Returns metadata about the state of the merge, including whether the
merge has been made.


=head2 RepositoryName => Str

  The name of the repository that contains the pull request source and
destination branches.


=head2 SourceCommit => Str

  The full commit ID of the tip of the source branch used to create the
pull request. If the pull request branch is updated by a push while the
pull request is open, the commit ID will change to reflect the new tip
of the branch.


=head2 SourceReference => Str

  The branch of the repository that contains the changes for the pull
request. Also known as the source branch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

