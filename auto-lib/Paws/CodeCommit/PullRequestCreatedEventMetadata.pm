package Paws::CodeCommit::PullRequestCreatedEventMetadata;
  use Moose;
  has DestinationCommitId => (is => 'ro', isa => 'Str', request_name => 'destinationCommitId', traits => ['NameInRequest']);
  has MergeBase => (is => 'ro', isa => 'Str', request_name => 'mergeBase', traits => ['NameInRequest']);
  has RepositoryName => (is => 'ro', isa => 'Str', request_name => 'repositoryName', traits => ['NameInRequest']);
  has SourceCommitId => (is => 'ro', isa => 'Str', request_name => 'sourceCommitId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PullRequestCreatedEventMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::PullRequestCreatedEventMetadata object:

  $service_obj->Method(Att1 => { DestinationCommitId => $value, ..., SourceCommitId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::PullRequestCreatedEventMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationCommitId

=head1 DESCRIPTION

Metadata about the pull request that is used when comparing the pull
request source with its destination.

=head1 ATTRIBUTES


=head2 DestinationCommitId => Str

  The commit ID of the tip of the branch specified as the destination
branch when the pull request was created.


=head2 MergeBase => Str

  The commit ID of the most recent commit that the source branch and the
destination branch have in common.


=head2 RepositoryName => Str

  The name of the repository where the pull request was created.


=head2 SourceCommitId => Str

  The commit ID on the source branch used when the pull request was
created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

