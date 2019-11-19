
package Paws::ES::GetUpgradeHistoryResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ES::Types qw/ES_UpgradeHistory/;
  has NextToken => (is => 'ro', isa => Str);
  has UpgradeHistories => (is => 'ro', isa => ArrayRef[ES_UpgradeHistory]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UpgradeHistories' => {
                                       'type' => 'ArrayRef[ES_UpgradeHistory]',
                                       'class' => 'Paws::ES::UpgradeHistory'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
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

Paws::ES::GetUpgradeHistoryResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token that needs to be supplied to the next call to get the
next page of results


=head2 UpgradeHistories => ArrayRef[ES_UpgradeHistory]

A list of C< UpgradeHistory > objects corresponding to each Upgrade or
Upgrade Eligibility Check performed on a domain returned as part of C<
GetUpgradeHistoryResponse > object.


=head2 _request_id => Str


=cut

