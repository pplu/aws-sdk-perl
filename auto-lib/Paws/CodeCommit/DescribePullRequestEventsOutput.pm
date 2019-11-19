# Generated from json/callresult_class.tt

package Paws::CodeCommit::DescribePullRequestEventsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeCommit::Types qw/CodeCommit_PullRequestEvent/;
  has NextToken => (is => 'ro', isa => Str);
  has PullRequestEvents => (is => 'ro', isa => ArrayRef[CodeCommit_PullRequestEvent], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'PullRequestEvents' => {
                                        'class' => 'Paws::CodeCommit::PullRequestEvent',
                                        'type' => 'ArrayRef[CodeCommit_PullRequestEvent]'
                                      }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'PullRequestEvents' => 'pullRequestEvents'
                     },
  'IsRequired' => {
                    'PullRequestEvents' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DescribePullRequestEventsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 B<REQUIRED> PullRequestEvents => ArrayRef[CodeCommit_PullRequestEvent]

Information about the pull request events.


=head2 _request_id => Str


=cut

1;