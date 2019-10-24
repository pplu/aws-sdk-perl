# Generated from json/callresult_class.tt

package Paws::CodeCommit::MergePullRequestByFastForwardOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw/CodeCommit_PullRequest/;
  has PullRequest => (is => 'ro', isa => CodeCommit_PullRequest);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PullRequest' => {
                                  'class' => 'Paws::CodeCommit::PullRequest',
                                  'type' => 'CodeCommit_PullRequest'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'PullRequest' => 'pullRequest'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::MergePullRequestByFastForwardOutput

=head1 ATTRIBUTES


=head2 PullRequest => CodeCommit_PullRequest

Information about the specified pull request, including information
about the merge.


=head2 _request_id => Str


=cut

1;