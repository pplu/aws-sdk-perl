
package Paws::XRay::CreateSamplingRuleResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::XRay::Types qw/XRay_SamplingRuleRecord/;
  has SamplingRuleRecord => (is => 'ro', isa => XRay_SamplingRuleRecord);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SamplingRuleRecord' => {
                                         'class' => 'Paws::XRay::SamplingRuleRecord',
                                         'type' => 'XRay_SamplingRuleRecord'
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

Paws::XRay::CreateSamplingRuleResult

=head1 ATTRIBUTES


=head2 SamplingRuleRecord => XRay_SamplingRuleRecord

The saved rule definition and metadata.


=head2 _request_id => Str


=cut

