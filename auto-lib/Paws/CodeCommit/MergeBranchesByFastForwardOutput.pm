# Generated from json/callresult_class.tt

package Paws::CodeCommit::MergeBranchesByFastForwardOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw//;
  has CommitId => (is => 'ro', isa => Str);
  has TreeId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'TreeId' => 'treeId',
                       'CommitId' => 'commitId'
                     },
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
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::MergeBranchesByFastForwardOutput

=head1 ATTRIBUTES


=head2 CommitId => Str

The commit ID of the merge in the destination or target branch.


=head2 TreeId => Str

The tree ID of the merge in the destination or target branch.


=head2 _request_id => Str


=cut

1;