# Generated from json/callresult_class.tt

package Paws::Support::DescribeTrustedAdvisorCheckRefreshStatusesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Support::Types qw/Support_TrustedAdvisorCheckRefreshStatus/;
  has Statuses => (is => 'ro', isa => ArrayRef[Support_TrustedAdvisorCheckRefreshStatus], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Statuses' => 'statuses'
                     },
  'IsRequired' => {
                    'Statuses' => 1
                  },
  'types' => {
               'Statuses' => {
                               'type' => 'ArrayRef[Support_TrustedAdvisorCheckRefreshStatus]',
                               'class' => 'Paws::Support::TrustedAdvisorCheckRefreshStatus'
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

Paws::Support::DescribeTrustedAdvisorCheckRefreshStatusesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Statuses => ArrayRef[Support_TrustedAdvisorCheckRefreshStatus]

The refresh status of the specified Trusted Advisor checks.


=head2 _request_id => Str


=cut

1;