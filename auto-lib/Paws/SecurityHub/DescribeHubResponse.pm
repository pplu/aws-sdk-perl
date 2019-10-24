
package Paws::SecurityHub::DescribeHubResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecurityHub::Types qw//;
  has HubArn => (is => 'ro', isa => Str);
  has SubscribedAt => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SubscribedAt' => {
                                   'type' => 'Str'
                                 },
               'HubArn' => {
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DescribeHubResponse

=head1 ATTRIBUTES


=head2 HubArn => Str

The ARN of the Hub resource retrieved.


=head2 SubscribedAt => Str

The date and time when Security Hub was enabled in the account.


=head2 _request_id => Str


=cut

