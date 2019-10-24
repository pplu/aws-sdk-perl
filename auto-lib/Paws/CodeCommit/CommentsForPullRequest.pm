# Generated from default/object.tt
package Paws::CodeCommit::CommentsForPullRequest;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeCommit::Types qw/CodeCommit_Location CodeCommit_Comment/;
  has AfterBlobId => (is => 'ro', isa => Str);
  has AfterCommitId => (is => 'ro', isa => Str);
  has BeforeBlobId => (is => 'ro', isa => Str);
  has BeforeCommitId => (is => 'ro', isa => Str);
  has Comments => (is => 'ro', isa => ArrayRef[CodeCommit_Comment]);
  has Location => (is => 'ro', isa => CodeCommit_Location);
  has PullRequestId => (is => 'ro', isa => Str);
  has RepositoryName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Comments' => {
                               'class' => 'Paws::CodeCommit::Comment',
                               'type' => 'ArrayRef[CodeCommit_Comment]'
                             },
               'AfterBlobId' => {
                                  'type' => 'Str'
                                },
               'PullRequestId' => {
                                    'type' => 'Str'
                                  },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'BeforeCommitId' => {
                                     'type' => 'Str'
                                   },
               'AfterCommitId' => {
                                    'type' => 'Str'
                                  },
               'BeforeBlobId' => {
                                   'type' => 'Str'
                                 },
               'Location' => {
                               'class' => 'Paws::CodeCommit::Location',
                               'type' => 'CodeCommit_Location'
                             }
             },
  'NameInRequest' => {
                       'Comments' => 'comments',
                       'AfterBlobId' => 'afterBlobId',
                       'PullRequestId' => 'pullRequestId',
                       'RepositoryName' => 'repositoryName',
                       'BeforeCommitId' => 'beforeCommitId',
                       'AfterCommitId' => 'afterCommitId',
                       'BeforeBlobId' => 'beforeBlobId',
                       'Location' => 'location'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::CommentsForPullRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::CommentsForPullRequest object:

  $service_obj->Method(Att1 => { AfterBlobId => $value, ..., RepositoryName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::CommentsForPullRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->AfterBlobId

=head1 DESCRIPTION

Returns information about comments on a pull request.

=head1 ATTRIBUTES


=head2 AfterBlobId => Str

  The full blob ID of the file on which you want to comment on the source
commit.


=head2 AfterCommitId => Str

  he full commit ID of the commit that was the tip of the source branch
at the time the comment was made.


=head2 BeforeBlobId => Str

  The full blob ID of the file on which you want to comment on the
destination commit.


=head2 BeforeCommitId => Str

  The full commit ID of the commit that was the tip of the destination
branch when the pull request was created. This commit will be
superceded by the after commit in the source branch when and if you
merge the source branch into the destination branch.


=head2 Comments => ArrayRef[CodeCommit_Comment]

  An array of comment objects. Each comment object contains information
about a comment on the pull request.


=head2 Location => CodeCommit_Location

  Location information about the comment on the pull request, including
the file name, line number, and whether the version of the file where
the comment was made is 'BEFORE' (destination branch) or 'AFTER'
(source branch).


=head2 PullRequestId => Str

  The system-generated ID of the pull request.


=head2 RepositoryName => Str

  The name of the repository that contains the pull request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

