# Generated from json/callresult_class.tt

package Paws::CodeCommit::ListPullRequestsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeCommit::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has PullRequestIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PullRequestIds' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'PullRequestIds' => 'pullRequestIds'
                     },
  'IsRequired' => {
                    'PullRequestIds' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ListPullRequestsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that when provided in a request, returns the next
batch of the results.


=head2 B<REQUIRED> PullRequestIds => ArrayRef[Str|Undef]

The system-generated IDs of the pull requests.


=head2 _request_id => Str


=cut

1;