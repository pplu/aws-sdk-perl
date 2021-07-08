
package Paws::CodeCommit::GetCommentReactions;
  use Moose;
  has CommentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commentId' , required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ReactionUserArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reactionUserArn' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCommentReactions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::GetCommentReactionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetCommentReactions - Arguments for method GetCommentReactions on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCommentReactions on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method GetCommentReactions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCommentReactions.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $GetCommentReactionsOutput = $codecommit->GetCommentReactions(
      CommentId       => 'MyCommentId',
      MaxResults      => 1,                # OPTIONAL
      NextToken       => 'MyNextToken',    # OPTIONAL
      ReactionUserArn => 'MyArn',          # OPTIONAL
    );

    # Results:
    my $NextToken           = $GetCommentReactionsOutput->NextToken;
    my $ReactionsForComment = $GetCommentReactionsOutput->ReactionsForComment;

    # Returns a L<Paws::CodeCommit::GetCommentReactionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/GetCommentReactions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommentId => Str

The ID of the comment for which you want to get reactions information.



=head2 MaxResults => Int

A non-zero, non-negative integer used to limit the number of returned
results. The default is the same as the allowed maximum, 1,000.



=head2 NextToken => Str

An enumeration token that, when provided in a request, returns the next
batch of the results.



=head2 ReactionUserArn => Str

Optional. The Amazon Resource Name (ARN) of the user or identity for
which you want to get reaction information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCommentReactions in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

