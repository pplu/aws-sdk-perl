# Generated from json/callresult_class.tt

package Paws::CodeCommit::GetCommentsForPullRequestOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeCommit::Types qw/CodeCommit_CommentsForPullRequest/;
  has CommentsForPullRequestData => (is => 'ro', isa => ArrayRef[CodeCommit_CommentsForPullRequest]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'CommentsForPullRequestData' => 'commentsForPullRequestData'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CommentsForPullRequestData' => {
                                                 'type' => 'ArrayRef[CodeCommit_CommentsForPullRequest]',
                                                 'class' => 'Paws::CodeCommit::CommentsForPullRequest'
                                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetCommentsForPullRequestOutput

=head1 ATTRIBUTES


=head2 CommentsForPullRequestData => ArrayRef[CodeCommit_CommentsForPullRequest]

An array of comment objects on the pull request.


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 _request_id => Str


=cut

1;