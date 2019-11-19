# Generated from json/callresult_class.tt

package Paws::CodeCommit::CreateUnreferencedMergeCommitOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw//;
  has CommitId => (is => 'ro', isa => Str);
  has TreeId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CommitId' => {
                               'type' => 'Str'
                             },
               'TreeId' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TreeId' => 'treeId',
                       'CommitId' => 'commitId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::CreateUnreferencedMergeCommitOutput

=head1 ATTRIBUTES


=head2 CommitId => Str

The full commit ID of the commit that contains your merge results.


=head2 TreeId => Str

The full SHA-1 pointer of the tree information for the commit that
contains the merge results.


=head2 _request_id => Str


=cut

1;