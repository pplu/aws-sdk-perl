# Generated from json/callresult_class.tt

package Paws::Config::GetConformancePackComplianceSummaryResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_ConformancePackComplianceSummary/;
  has ConformancePackComplianceSummaryList => (is => 'ro', isa => ArrayRef[Config_ConformancePackComplianceSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConformancePackComplianceSummaryList' => {
                                                           'class' => 'Paws::Config::ConformancePackComplianceSummary',
                                                           'type' => 'ArrayRef[Config_ConformancePackComplianceSummary]'
                                                         },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::GetConformancePackComplianceSummaryResponse

=head1 ATTRIBUTES


=head2 ConformancePackComplianceSummaryList => ArrayRef[Config_ConformancePackComplianceSummary]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;