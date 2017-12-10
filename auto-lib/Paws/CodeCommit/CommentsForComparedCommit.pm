package Paws::CodeCommit::CommentsForComparedCommit;
  use Moose;
  has AfterBlobId => (is => 'ro', isa => 'Str', request_name => 'afterBlobId', traits => ['NameInRequest']);
  has AfterCommitId => (is => 'ro', isa => 'Str', request_name => 'afterCommitId', traits => ['NameInRequest']);
  has BeforeBlobId => (is => 'ro', isa => 'Str', request_name => 'beforeBlobId', traits => ['NameInRequest']);
  has BeforeCommitId => (is => 'ro', isa => 'Str', request_name => 'beforeCommitId', traits => ['NameInRequest']);
  has Comments => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::Comment]', request_name => 'comments', traits => ['NameInRequest']);
  has Location => (is => 'ro', isa => 'Paws::CodeCommit::Location', request_name => 'location', traits => ['NameInRequest']);
  has RepositoryName => (is => 'ro', isa => 'Str', request_name => 'repositoryName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::CommentsForComparedCommit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::CommentsForComparedCommit object:

  $service_obj->Method(Att1 => { AfterBlobId => $value, ..., RepositoryName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::CommentsForComparedCommit object:

  $result = $service_obj->Method(...);
  $result->Att1->AfterBlobId

=head1 DESCRIPTION

Returns information about comments on the comparison between two
commits.

=head1 ATTRIBUTES


=head2 AfterBlobId => Str

  The full blob ID of the commit used to establish the 'after' of the
comparison.


=head2 AfterCommitId => Str

  The full commit ID of the commit used to establish the 'after' of the
comparison.


=head2 BeforeBlobId => Str

  The full blob ID of the commit used to establish the 'before' of the
comparison.


=head2 BeforeCommitId => Str

  The full commit ID of the commit used to establish the 'before' of the
comparison.


=head2 Comments => ArrayRef[L<Paws::CodeCommit::Comment>]

  An array of comment objects. Each comment object contains information
about a comment on the comparison between commits.


=head2 Location => L<Paws::CodeCommit::Location>

  Location information about the comment on the comparison, including the
file name, line number, and whether the version of the file where the
comment was made is 'BEFORE' or 'AFTER'.


=head2 RepositoryName => Str

  The name of the repository that contains the compared commits.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

