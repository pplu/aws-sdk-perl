# Generated from json/callresult_class.tt

package Paws::CodeCommit::GetCommentOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw/CodeCommit_Comment/;
  has Comment => (is => 'ro', isa => CodeCommit_Comment);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Comment' => {
                              'class' => 'Paws::CodeCommit::Comment',
                              'type' => 'CodeCommit_Comment'
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

Paws::CodeCommit::GetCommentOutput

=head1 ATTRIBUTES


=head2 Comment => CodeCommit_Comment

The contents of the comment.


=head2 _request_id => Str


=cut

1;