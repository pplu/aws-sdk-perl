# Generated from json/callresult_class.tt

package Paws::CodeCommit::GetCommitOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw/CodeCommit_Commit/;
  has Commit => (is => 'ro', isa => CodeCommit_Commit, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Commit' => {
                             'class' => 'Paws::CodeCommit::Commit',
                             'type' => 'CodeCommit_Commit'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Commit' => 1
                  },
  'NameInRequest' => {
                       'Commit' => 'commit'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetCommitOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Commit => CodeCommit_Commit

A commit data type object that contains information about the specified
commit.


=head2 _request_id => Str


=cut

1;