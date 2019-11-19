# Generated from json/callresult_class.tt

package Paws::CodeCommit::PostCommentForComparedCommitOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw/CodeCommit_Location CodeCommit_Comment/;
  has AfterBlobId => (is => 'ro', isa => Str);
  has AfterCommitId => (is => 'ro', isa => Str);
  has BeforeBlobId => (is => 'ro', isa => Str);
  has BeforeCommitId => (is => 'ro', isa => Str);
  has Comment => (is => 'ro', isa => CodeCommit_Comment);
  has Location => (is => 'ro', isa => CodeCommit_Location);
  has RepositoryName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Comment' => 'comment',
                       'Location' => 'location',
                       'BeforeCommitId' => 'beforeCommitId',
                       'AfterCommitId' => 'afterCommitId',
                       'RepositoryName' => 'repositoryName',
                       'BeforeBlobId' => 'beforeBlobId',
                       'AfterBlobId' => 'afterBlobId'
                     },
  'types' => {
               'BeforeCommitId' => {
                                     'type' => 'Str'
                                   },
               'AfterCommitId' => {
                                    'type' => 'Str'
                                  },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'AfterBlobId' => {
                                  'type' => 'Str'
                                },
               'BeforeBlobId' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Comment' => {
                              'type' => 'CodeCommit_Comment',
                              'class' => 'Paws::CodeCommit::Comment'
                            },
               'Location' => {
                               'class' => 'Paws::CodeCommit::Location',
                               'type' => 'CodeCommit_Location'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PostCommentForComparedCommitOutput

=head1 ATTRIBUTES


=head2 AfterBlobId => Str

In the directionality you established, the blob ID of the 'after' blob.


=head2 AfterCommitId => Str

In the directionality you established, the full commit ID of the
'after' commit.


=head2 BeforeBlobId => Str

In the directionality you established, the blob ID of the 'before'
blob.


=head2 BeforeCommitId => Str

In the directionality you established, the full commit ID of the
'before' commit.


=head2 Comment => CodeCommit_Comment

The content of the comment you posted.


=head2 Location => CodeCommit_Location

The location of the comment in the comparison between the two commits.


=head2 RepositoryName => Str

The name of the repository where you posted a comment on the comparison
between commits.


=head2 _request_id => Str


=cut

1;