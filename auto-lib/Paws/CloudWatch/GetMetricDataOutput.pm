# Generated from callresult_class.tt

package Paws::CloudWatch::GetMetricDataOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatch::Types qw/CloudWatch_MessageData CloudWatch_MetricDataResult/;
  has Messages => (is => 'ro', isa => ArrayRef[CloudWatch_MessageData]);
  has MetricDataResults => (is => 'ro', isa => ArrayRef[CloudWatch_MetricDataResult]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MetricDataResults' => {
                                        'class' => 'Paws::CloudWatch::MetricDataResult',
                                        'type' => 'ArrayRef[CloudWatch_MetricDataResult]'
                                      },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Messages' => {
                               'class' => 'Paws::CloudWatch::MessageData',
                               'type' => 'ArrayRef[CloudWatch_MessageData]'
                             }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::GetMetricDataOutput

=head1 ATTRIBUTES


=head2 Messages => ArrayRef[CloudWatch_MessageData]

Contains a message about this C<GetMetricData> operation, if the
operation results in such a message. An example of a message that may
be returned is C<Maximum number of allowed metrics exceeded>. If there
is a message, as much of the operation as possible is still executed.

A message appears here only if it is related to the global
C<GetMetricData> operation. Any message about a specific metric
returned by the operation appears in the C<MetricDataResult> object
returned for that metric.


=head2 MetricDataResults => ArrayRef[CloudWatch_MetricDataResult]

The metrics that are returned, including the metric name, namespace,
and dimensions.


=head2 NextToken => Str

A token that marks the next batch of returned results.


=head2 _request_id => Str


=cut

