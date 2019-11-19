# Generated from json/callresult_class.tt

package Paws::CodeCommit::DeleteBranchOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw/CodeCommit_BranchInfo/;
  has DeletedBranch => (is => 'ro', isa => CodeCommit_BranchInfo);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeletedBranch' => {
                                    'type' => 'CodeCommit_BranchInfo',
                                    'class' => 'Paws::CodeCommit::BranchInfo'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DeletedBranch' => 'deletedBranch'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DeleteBranchOutput

=head1 ATTRIBUTES


=head2 DeletedBranch => CodeCommit_BranchInfo

Information about the branch deleted by the operation, including the
branch name and the commit ID that was the tip of the branch.


=head2 _request_id => Str


=cut

1;