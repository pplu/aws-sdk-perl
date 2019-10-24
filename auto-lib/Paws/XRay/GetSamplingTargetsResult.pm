
package Paws::XRay::GetSamplingTargetsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::XRay::Types qw/XRay_SamplingTargetDocument XRay_UnprocessedStatistics/;
  has LastRuleModification => (is => 'ro', isa => Str);
  has SamplingTargetDocuments => (is => 'ro', isa => ArrayRef[XRay_SamplingTargetDocument]);
  has UnprocessedStatistics => (is => 'ro', isa => ArrayRef[XRay_UnprocessedStatistics]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastRuleModification' => {
                                           'type' => 'Str'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SamplingTargetDocuments' => {
                                              'class' => 'Paws::XRay::SamplingTargetDocument',
                                              'type' => 'ArrayRef[XRay_SamplingTargetDocument]'
                                            },
               'UnprocessedStatistics' => {
                                            'class' => 'Paws::XRay::UnprocessedStatistics',
                                            'type' => 'ArrayRef[XRay_UnprocessedStatistics]'
                                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetSamplingTargetsResult

=head1 ATTRIBUTES


=head2 LastRuleModification => Str

The last time a user changed the sampling rule configuration. If the
sampling rule configuration changed since the service last retrieved
it, the service should call GetSamplingRules to get the latest version.


=head2 SamplingTargetDocuments => ArrayRef[XRay_SamplingTargetDocument]

Updated rules that the service should use to sample requests.


=head2 UnprocessedStatistics => ArrayRef[XRay_UnprocessedStatistics]

Information about SamplingStatisticsDocument that X-Ray could not
process.


=head2 _request_id => Str


=cut

