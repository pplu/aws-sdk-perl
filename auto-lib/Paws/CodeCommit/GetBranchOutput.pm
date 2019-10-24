# Generated from json/callresult_class.tt

package Paws::CodeCommit::GetBranchOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw/CodeCommit_BranchInfo/;
  has Branch => (is => 'ro', isa => CodeCommit_BranchInfo);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Branch' => {
                             'class' => 'Paws::CodeCommit::BranchInfo',
                             'type' => 'CodeCommit_BranchInfo'
                           }
             },
  'NameInRequest' => {
                       'Branch' => 'branch'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetBranchOutput

=head1 ATTRIBUTES


=head2 Branch => CodeCommit_BranchInfo

The name of the branch.


=head2 _request_id => Str


=cut

1;