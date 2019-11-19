# Generated from json/callresult_class.tt

package Paws::Support::RefreshTrustedAdvisorCheckResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Support::Types qw/Support_TrustedAdvisorCheckRefreshStatus/;
  has Status => (is => 'ro', isa => Support_TrustedAdvisorCheckRefreshStatus, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Status' => 'status'
                     },
  'IsRequired' => {
                    'Status' => 1
                  },
  'types' => {
               'Status' => {
                             'type' => 'Support_TrustedAdvisorCheckRefreshStatus',
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

Paws::Support::RefreshTrustedAdvisorCheckResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Support_TrustedAdvisorCheckRefreshStatus

The current refresh status for a check, including the amount of time
until the check is eligible for refresh.


=head2 _request_id => Str


=cut

1;