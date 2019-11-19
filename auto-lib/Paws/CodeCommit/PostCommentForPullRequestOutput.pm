# Generated from json/callresult_class.tt

package Paws::CodeCommit::PostCommentForPullRequestOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw/CodeCommit_Location CodeCommit_Comment/;
  has AfterBlobId => (is => 'ro', isa => Str);
  has AfterCommitId => (is => 'ro', isa => Str);
  has BeforeBlobId => (is => 'ro', isa => Str);
  has BeforeCommitId => (is => 'ro', isa => Str);
  has Comment => (is => 'ro', isa => CodeCommit_Comment);
  has Location => (is => 'ro', isa => CodeCommit_Location);
  has PullRequestId => (is => 'ro', isa => Str);
  has RepositoryName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AfterCommitId' => {
                                    'type' => 'Str'
                                  },
               'BeforeCommitId' => {
                                     'type' => 'Str'
                                   },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BeforeBlobId' => {
                                   'type' => 'Str'
                                 },
               'AfterBlobId' => {
                                  'type' => 'Str'
                                },
               'Comment' => {
                              'type' => 'CodeCommit_Comment',
                              'class' => 'Paws::CodeCommit::Comment'
                            },
               'PullRequestId' => {
                                    'type' => 'Str'
                                  },
               'Location' => {
                               'type' => 'CodeCommit_Location',
                               'class' => 'Paws::CodeCommit::Location'
                             }
             },
  'NameInRequest' => {
                       'AfterCommitId' => 'afterCommitId',
                       'BeforeCommitId' => 'beforeCommitId',
                       'AfterBlobId' => 'afterBlobId',
                       'BeforeBlobId' => 'beforeBlobId',
                       'RepositoryName' => 'repositoryName',
                       'PullRequestId' => 'pullRequestId',
                       'Comment' => 'comment',
                       'Location' => 'location'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PostCommentForPullRequestOutput

=head1 ATTRIBUTES


=head2 AfterBlobId => Str

In the directionality of the pull request, the blob ID of the 'after'
blob.


=head2 AfterCommitId => Str

The full commit ID of the commit in the destination branch where the
pull request will be merged.


=head2 BeforeBlobId => Str

In the directionality of the pull request, the blob ID of the 'before'
blob.


=head2 BeforeCommitId => Str

The full commit ID of the commit in the source branch used to create
the pull request, or in the case of an updated pull request, the full
commit ID of the commit used to update the pull request.


=head2 Comment => CodeCommit_Comment

The content of the comment you posted.


=head2 Location => CodeCommit_Location

The location of the change where you posted your comment.


=head2 PullRequestId => Str

The system-generated ID of the pull request.


=head2 RepositoryName => Str

The name of the repository where you posted a comment on a pull
request.


=head2 _request_id => Str


=cut

1;