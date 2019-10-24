# Generated from callresult_class.tt

package Paws::AutoScaling::DescribeMetricCollectionTypesAnswer;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AutoScaling::Types qw/AutoScaling_MetricCollectionType AutoScaling_MetricGranularityType/;
  has Granularities => (is => 'ro', isa => ArrayRef[AutoScaling_MetricGranularityType]);
  has Metrics => (is => 'ro', isa => ArrayRef[AutoScaling_MetricCollectionType]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Granularities' => {
                                    'class' => 'Paws::AutoScaling::MetricGranularityType',
                                    'type' => 'ArrayRef[AutoScaling_MetricGranularityType]'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Metrics' => {
                              'class' => 'Paws::AutoScaling::MetricCollectionType',
                              'type' => 'ArrayRef[AutoScaling_MetricCollectionType]'
                            }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeMetricCollectionTypesAnswer

=head1 ATTRIBUTES


=head2 Granularities => ArrayRef[AutoScaling_MetricGranularityType]

The granularities for the metrics.


=head2 Metrics => ArrayRef[AutoScaling_MetricCollectionType]

One or more metrics.


=head2 _request_id => Str


=cut

