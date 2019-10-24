
package Paws::XRay::GetSamplingStatisticSummariesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::XRay::Types qw/XRay_SamplingStatisticSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has SamplingStatisticSummaries => (is => 'ro', isa => ArrayRef[XRay_SamplingStatisticSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SamplingStatisticSummaries' => {
                                                 'class' => 'Paws::XRay::SamplingStatisticSummary',
                                                 'type' => 'ArrayRef[XRay_SamplingStatisticSummary]'
                                               },
               'NextToken' => {
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

Paws::XRay::GetSamplingStatisticSummariesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token. Not used.


=head2 SamplingStatisticSummaries => ArrayRef[XRay_SamplingStatisticSummary]

Information about the number of requests instrumented for each sampling
rule.


=head2 _request_id => Str


=cut

