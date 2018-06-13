
package Paws::CodeCommit::UpdateComment;
  use Moose;
  has CommentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commentId' , required => 1);
  has Content => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'content' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateComment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::UpdateCommentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::UpdateComment - Arguments for method UpdateComment on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateComment on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method UpdateComment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateComment.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $UpdateCommentOutput = $codecommit->UpdateComment(
      CommentId => 'MyCommentId',
      Content   => 'MyContent',

    );

    # Results:
    my $Comment = $UpdateCommentOutput->Comment;

    # Returns a L<Paws::CodeCommit::UpdateCommentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/UpdateComment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommentId => Str

The system-generated ID of the comment you want to update. To get this
ID, use GetCommentsForComparedCommit or GetCommentsForPullRequest.



=head2 B<REQUIRED> Content => Str

The updated content with which you want to replace the existing content
of the comment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateComment in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

