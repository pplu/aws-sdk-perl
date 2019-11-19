# Generated from json/callresult_class.tt

package Paws::CodeCommit::PostCommentReplyOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw/CodeCommit_Comment/;
  has Comment => (is => 'ro', isa => CodeCommit_Comment);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Comment' => {
                              'type' => 'CodeCommit_Comment',
                              'class' => 'Paws::CodeCommit::Comment'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Comment' => 'comment'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PostCommentReplyOutput

=head1 ATTRIBUTES


=head2 Comment => CodeCommit_Comment

Information about the reply to a comment.


=head2 _request_id => Str


=cut

1;