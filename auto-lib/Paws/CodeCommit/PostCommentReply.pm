
package Paws::CodeCommit::PostCommentReply;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken' );
  has Content => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'content' , required => 1);
  has InReplyTo => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inReplyTo' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PostCommentReply');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::PostCommentReplyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PostCommentReply - Arguments for method PostCommentReply on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PostCommentReply on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method PostCommentReply.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PostCommentReply.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $PostCommentReplyOutput = $codecommit->PostCommentReply(
      Content            => 'MyContent',
      InReplyTo          => 'MyCommentId',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
    );

    # Results:
    my $Comment = $PostCommentReplyOutput->Comment;

    # Returns a L<Paws::CodeCommit::PostCommentReplyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/PostCommentReply>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, client-generated idempotency token that when provided in a
request, ensures the request cannot be repeated with a changed
parameter. If a request is received with the same parameters and a
token is included, the request will return information about the
initial request that used that token.



=head2 B<REQUIRED> Content => Str

The contents of your reply to a comment.



=head2 B<REQUIRED> InReplyTo => Str

The system-generated ID of the comment to which you want to reply. To
get this ID, use GetCommentsForComparedCommit or
GetCommentsForPullRequest.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PostCommentReply in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

