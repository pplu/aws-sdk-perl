# Generated from default/object.tt
package Paws::CodeCommit::CommentsForComparedCommit;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeCommit::Types qw/CodeCommit_Comment CodeCommit_Location/;
  has AfterBlobId => (is => 'ro', isa => Str);
  has AfterCommitId => (is => 'ro', isa => Str);
  has BeforeBlobId => (is => 'ro', isa => Str);
  has BeforeCommitId => (is => 'ro', isa => Str);
  has Comments => (is => 'ro', isa => ArrayRef[CodeCommit_Comment]);
  has Location => (is => 'ro', isa => CodeCommit_Location);
  has RepositoryName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Location' => 'location',
                       'BeforeCommitId' => 'beforeCommitId',
                       'AfterCommitId' => 'afterCommitId',
                       'Comments' => 'comments',
                       'RepositoryName' => 'repositoryName',
                       'AfterBlobId' => 'afterBlobId',
                       'BeforeBlobId' => 'beforeBlobId'
                     },
  'types' => {
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'BeforeBlobId' => {
                                   'type' => 'Str'
                                 },
               'AfterBlobId' => {
                                  'type' => 'Str'
                                },
               'AfterCommitId' => {
                                    'type' => 'Str'
                                  },
               'BeforeCommitId' => {
                                     'type' => 'Str'
                                   },
               'Comments' => {
                               'class' => 'Paws::CodeCommit::Comment',
                               'type' => 'ArrayRef[CodeCommit_Comment]'
                             },
               'Location' => {
                               'type' => 'CodeCommit_Location',
                               'class' => 'Paws::CodeCommit::Location'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::CommentsForComparedCommit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::CommentsForComparedCommit object:

  $service_obj->Method(Att1 => { AfterBlobId => $value, ..., RepositoryName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::CommentsForComparedCommit object:

  $result = $service_obj->Method(...);
  $result->Att1->AfterBlobId

=head1 DESCRIPTION

Returns information about comments on the comparison between two
commits.

=head1 ATTRIBUTES


=head2 AfterBlobId => Str

  The full blob ID of the commit used to establish the 'after' of the
comparison.


=head2 AfterCommitId => Str

  The full commit ID of the commit used to establish the 'after' of the
comparison.


=head2 BeforeBlobId => Str

  The full blob ID of the commit used to establish the 'before' of the
comparison.


=head2 BeforeCommitId => Str

  The full commit ID of the commit used to establish the 'before' of the
comparison.


=head2 Comments => ArrayRef[CodeCommit_Comment]

  An array of comment objects. Each comment object contains information
about a comment on the comparison between commits.


=head2 Location => CodeCommit_Location

  Location information about the comment on the comparison, including the
file name, line number, and whether the version of the file where the
comment was made is 'BEFORE' or 'AFTER'.


=head2 RepositoryName => Str

  The name of the repository that contains the compared commits.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

