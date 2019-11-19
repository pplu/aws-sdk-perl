# Generated from json/callresult_class.tt

package Paws::CodeCommit::BatchGetCommitsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeCommit::Types qw/CodeCommit_Commit CodeCommit_BatchGetCommitsError/;
  has Commits => (is => 'ro', isa => ArrayRef[CodeCommit_Commit]);
  has Errors => (is => 'ro', isa => ArrayRef[CodeCommit_BatchGetCommitsError]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Commits' => {
                              'type' => 'ArrayRef[CodeCommit_Commit]',
                              'class' => 'Paws::CodeCommit::Commit'
                            },
               'Errors' => {
                             'class' => 'Paws::CodeCommit::BatchGetCommitsError',
                             'type' => 'ArrayRef[CodeCommit_BatchGetCommitsError]'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Commits' => 'commits',
                       'Errors' => 'errors'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::BatchGetCommitsOutput

=head1 ATTRIBUTES


=head2 Commits => ArrayRef[CodeCommit_Commit]

An array of commit data type objects, each of which contains
information about a specified commit.


=head2 Errors => ArrayRef[CodeCommit_BatchGetCommitsError]

Returns any commit IDs for which information could not be found. For
example, if one of the commit IDs was a shortened SHA or that commit
was not found in the specified repository, the ID will return an error
object with additional information.


=head2 _request_id => Str


=cut

1;