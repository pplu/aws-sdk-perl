# Generated from json/callresult_class.tt

package Paws::CodeCommit::UpdatePullRequestDescriptionOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw/CodeCommit_PullRequest/;
  has PullRequest => (is => 'ro', isa => CodeCommit_PullRequest, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'PullRequest' => 'pullRequest'
                     },
  'IsRequired' => {
                    'PullRequest' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PullRequest' => {
                                  'class' => 'Paws::CodeCommit::PullRequest',
                                  'type' => 'CodeCommit_PullRequest'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::UpdatePullRequestDescriptionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> PullRequest => CodeCommit_PullRequest

Information about the updated pull request.


=head2 _request_id => Str


=cut

1;