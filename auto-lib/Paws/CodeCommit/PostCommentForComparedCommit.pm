
package Paws::CodeCommit::PostCommentForComparedCommit;
  use Moose;
  has AfterCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'afterCommitId' , required => 1);
  has BeforeCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'beforeCommitId' );
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken' );
  has Content => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'content' , required => 1);
  has Location => (is => 'ro', isa => 'Paws::CodeCommit::Location', traits => ['NameInRequest'], request_name => 'location' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PostCommentForComparedCommit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::PostCommentForComparedCommitOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PostCommentForComparedCommit - Arguments for method PostCommentForComparedCommit on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PostCommentForComparedCommit on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method PostCommentForComparedCommit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PostCommentForComparedCommit.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $PostCommentForComparedCommitOutput =
      $codecommit->PostCommentForComparedCommit(
      AfterCommitId      => 'MyCommitId',
      Content            => 'MyContent',
      RepositoryName     => 'MyRepositoryName',
      BeforeCommitId     => 'MyCommitId',              # OPTIONAL
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Location           => {
        FilePath            => 'MyPath',    # OPTIONAL
        FilePosition        => 1,           # OPTIONAL
        RelativeFileVersion => 'BEFORE',    # values: BEFORE, AFTER; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $AfterBlobId    = $PostCommentForComparedCommitOutput->AfterBlobId;
    my $AfterCommitId  = $PostCommentForComparedCommitOutput->AfterCommitId;
    my $BeforeBlobId   = $PostCommentForComparedCommitOutput->BeforeBlobId;
    my $BeforeCommitId = $PostCommentForComparedCommitOutput->BeforeCommitId;
    my $Comment        = $PostCommentForComparedCommitOutput->Comment;
    my $Location       = $PostCommentForComparedCommitOutput->Location;
    my $RepositoryName = $PostCommentForComparedCommitOutput->RepositoryName;

    # Returns a L<Paws::CodeCommit::PostCommentForComparedCommitOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/PostCommentForComparedCommit>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AfterCommitId => Str

To establish the directionality of the comparison, the full commit ID
of the 'after' commit.



=head2 BeforeCommitId => Str

To establish the directionality of the comparison, the full commit ID
of the 'before' commit.



=head2 ClientRequestToken => Str

A unique, client-generated idempotency token that when provided in a
request, ensures the request cannot be repeated with a changed
parameter. If a request is received with the same parameters and a
token is included, the request will return information about the
initial request that used that token.



=head2 B<REQUIRED> Content => Str

The content of the comment you want to make.



=head2 Location => L<Paws::CodeCommit::Location>

The location of the comparison where you want to comment.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository where you want to post a comment on the
comparison between commits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PostCommentForComparedCommit in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

