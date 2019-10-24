# Generated from callresult_class.tt

package Paws::CloudWatch::GetMetricStatisticsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatch::Types qw/CloudWatch_Datapoint/;
  has Datapoints => (is => 'ro', isa => ArrayRef[CloudWatch_Datapoint]);
  has Label => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Datapoints' => {
                                 'class' => 'Paws::CloudWatch::Datapoint',
                                 'type' => 'ArrayRef[CloudWatch_Datapoint]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Label' => {
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

Paws::CloudWatch::GetMetricStatisticsOutput

=head1 ATTRIBUTES


=head2 Datapoints => ArrayRef[CloudWatch_Datapoint]

The data points for the specified metric.


=head2 Label => Str

A label for the specified metric.


=head2 _request_id => Str


=cut

