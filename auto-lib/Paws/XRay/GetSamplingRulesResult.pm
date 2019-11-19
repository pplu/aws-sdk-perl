
package Paws::XRay::GetSamplingRulesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::XRay::Types qw/XRay_SamplingRuleRecord/;
  has NextToken => (is => 'ro', isa => Str);
  has SamplingRuleRecords => (is => 'ro', isa => ArrayRef[XRay_SamplingRuleRecord]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'SamplingRuleRecords' => {
                                          'type' => 'ArrayRef[XRay_SamplingRuleRecord]',
                                          'class' => 'Paws::XRay::SamplingRuleRecord'
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

Paws::XRay::GetSamplingRulesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token. Not used.


=head2 SamplingRuleRecords => ArrayRef[XRay_SamplingRuleRecord]

Rule definitions and metadata.


=head2 _request_id => Str


=cut

