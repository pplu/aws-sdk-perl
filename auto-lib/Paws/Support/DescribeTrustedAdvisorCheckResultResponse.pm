# Generated from json/callresult_class.tt

package Paws::Support::DescribeTrustedAdvisorCheckResultResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Support::Types qw/Support_TrustedAdvisorCheckResult/;
  has Result => (is => 'ro', isa => Support_TrustedAdvisorCheckResult);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Result' => {
                             'type' => 'Support_TrustedAdvisorCheckResult',
                             'class' => 'Paws::Support::TrustedAdvisorCheckResult'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Result' => 'result'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeTrustedAdvisorCheckResultResponse

=head1 ATTRIBUTES


=head2 Result => Support_TrustedAdvisorCheckResult

The detailed results of the Trusted Advisor check.


=head2 _request_id => Str


=cut

1;