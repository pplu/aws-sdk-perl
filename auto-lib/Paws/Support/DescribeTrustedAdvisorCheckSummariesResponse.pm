# Generated from json/callresult_class.tt

package Paws::Support::DescribeTrustedAdvisorCheckSummariesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Support::Types qw/Support_TrustedAdvisorCheckSummary/;
  has Summaries => (is => 'ro', isa => ArrayRef[Support_TrustedAdvisorCheckSummary], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Summaries' => 'summaries'
                     },
  'IsRequired' => {
                    'Summaries' => 1
                  },
  'types' => {
               'Summaries' => {
                                'class' => 'Paws::Support::TrustedAdvisorCheckSummary',
                                'type' => 'ArrayRef[Support_TrustedAdvisorCheckSummary]'
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

Paws::Support::DescribeTrustedAdvisorCheckSummariesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Summaries => ArrayRef[Support_TrustedAdvisorCheckSummary]

The summary information for the requested Trusted Advisor checks.


=head2 _request_id => Str


=cut

1;