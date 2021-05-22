
package Paws::CodeCommit::PutCommentReaction;
  use Moose;
  has CommentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commentId' , required => 1);
  has ReactionValue => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reactionValue' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutCommentReaction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PutCommentReaction - Arguments for method PutCommentReaction on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutCommentReaction on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method PutCommentReaction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutCommentReaction.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    $codecommit->PutCommentReaction(
      CommentId     => 'MyCommentId',
      ReactionValue => 'MyReactionValue',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/PutCommentReaction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommentId => Str

The ID of the comment to which you want to add or update a reaction.



=head2 B<REQUIRED> ReactionValue => Str

The emoji reaction you want to add or update. To remove a reaction,
provide a value of blank or null. You can also provide the value of
none. For information about emoji reaction values supported in AWS
CodeCommit, see the AWS CodeCommit User Guide
(https://docs.aws.amazon.com/codecommit/latest/userguide/how-to-commit-comment.html#emoji-reaction-table).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutCommentReaction in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

