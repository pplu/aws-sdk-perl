# Generated from callresult_class.tt

package Paws::CloudSearch::DescribeScalingParametersResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearch::Types qw/CloudSearch_ScalingParametersStatus/;
  has ScalingParameters => (is => 'ro', isa => CloudSearch_ScalingParametersStatus, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ScalingParameters' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ScalingParameters' => {
                                        'class' => 'Paws::CloudSearch::ScalingParametersStatus',
                                        'type' => 'CloudSearch_ScalingParametersStatus'
                                      }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeScalingParametersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScalingParameters => CloudSearch_ScalingParametersStatus




=head2 _request_id => Str


=cut

