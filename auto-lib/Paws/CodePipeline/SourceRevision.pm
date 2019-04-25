package Paws::CodePipeline::SourceRevision;
  use Moose;
  has ActionName => (is => 'ro', isa => 'Str', request_name => 'actionName', traits => ['NameInRequest'], required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', request_name => 'revisionId', traits => ['NameInRequest']);
  has RevisionSummary => (is => 'ro', isa => 'Str', request_name => 'revisionSummary', traits => ['NameInRequest']);
  has RevisionUrl => (is => 'ro', isa => 'Str', request_name => 'revisionUrl', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::SourceRevision

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::SourceRevision object:

  $service_obj->Method(Att1 => { ActionName => $value, ..., RevisionUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::SourceRevision object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionName

=head1 DESCRIPTION

Information about the version (or revision) of a source artifact that
initiated a pipeline execution.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionName => Str

  The name of the action that processed the revision to the source
artifact.


=head2 RevisionId => Str

  The system-generated unique ID that identifies the revision number of
the artifact.


=head2 RevisionSummary => Str

  Summary information about the most recent revision of the artifact. For
GitHub and AWS CodeCommit repositories, the commit message. For Amazon
S3 buckets or actions, the user-provided content of a
C<codepipeline-artifact-revision-summary> key specified in the object
metadata.


=head2 RevisionUrl => Str

  The commit ID for the artifact revision. For artifacts stored in GitHub
or AWS CodeCommit repositories, the commit ID is linked to a commit
details page.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

