# Generated from default/object.tt
package Paws::CodeCommit::Commit;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeCommit::Types qw/CodeCommit_UserInfo/;
  has AdditionalData => (is => 'ro', isa => Str);
  has Author => (is => 'ro', isa => CodeCommit_UserInfo);
  has CommitId => (is => 'ro', isa => Str);
  has Committer => (is => 'ro', isa => CodeCommit_UserInfo);
  has Message => (is => 'ro', isa => Str);
  has Parents => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has TreeId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TreeId' => {
                             'type' => 'Str'
                           },
               'Parents' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'Message' => {
                              'type' => 'Str'
                            },
               'CommitId' => {
                               'type' => 'Str'
                             },
               'AdditionalData' => {
                                     'type' => 'Str'
                                   },
               'Committer' => {
                                'class' => 'Paws::CodeCommit::UserInfo',
                                'type' => 'CodeCommit_UserInfo'
                              },
               'Author' => {
                             'class' => 'Paws::CodeCommit::UserInfo',
                             'type' => 'CodeCommit_UserInfo'
                           }
             },
  'NameInRequest' => {
                       'TreeId' => 'treeId',
                       'Parents' => 'parents',
                       'Message' => 'message',
                       'CommitId' => 'commitId',
                       'AdditionalData' => 'additionalData',
                       'Committer' => 'committer',
                       'Author' => 'author'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::Commit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::Commit object:

  $service_obj->Method(Att1 => { AdditionalData => $value, ..., TreeId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::Commit object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalData

=head1 DESCRIPTION

Returns information about a specific commit.

=head1 ATTRIBUTES


=head2 AdditionalData => Str

  Any additional data associated with the specified commit.


=head2 Author => CodeCommit_UserInfo

  Information about the author of the specified commit. Information
includes the date in timestamp format with GMT offset, the name of the
author, and the email address for the author, as configured in Git.


=head2 CommitId => Str

  The full SHA of the specified commit.


=head2 Committer => CodeCommit_UserInfo

  Information about the person who committed the specified commit, also
known as the committer. Information includes the date in timestamp
format with GMT offset, the name of the committer, and the email
address for the committer, as configured in Git.

For more information about the difference between an author and a
committer in Git, see Viewing the Commit History
(http://git-scm.com/book/ch2-3.html) in Pro Git by Scott Chacon and Ben
Straub.


=head2 Message => Str

  The commit message associated with the specified commit.


=head2 Parents => ArrayRef[Str|Undef]

  A list of parent commits for the specified commit. Each parent commit
ID is the full commit ID.


=head2 TreeId => Str

  Tree information for the specified commit.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

