# Generated from json/callresult_class.tt

package Paws::CodeCommit::GetCommentsForComparedCommitOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeCommit::Types qw/CodeCommit_CommentsForComparedCommit/;
  has CommentsForComparedCommitData => (is => 'ro', isa => ArrayRef[CodeCommit_CommentsForComparedCommit]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'CommentsForComparedCommitData' => 'commentsForComparedCommitData'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'CommentsForComparedCommitData' => {
                                                    'type' => 'ArrayRef[CodeCommit_CommentsForComparedCommit]',
                                                    'class' => 'Paws::CodeCommit::CommentsForComparedCommit'
                                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetCommentsForComparedCommitOutput

=head1 ATTRIBUTES


=head2 CommentsForComparedCommitData => ArrayRef[CodeCommit_CommentsForComparedCommit]

A list of comment objects on the compared commit.


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 _request_id => Str


=cut

1;