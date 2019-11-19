# Generated from callresult_class.tt

package Paws::CloudWatch::DescribeAnomalyDetectorsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatch::Types qw/CloudWatch_AnomalyDetector/;
  has AnomalyDetectors => (is => 'ro', isa => ArrayRef[CloudWatch_AnomalyDetector]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AnomalyDetectors' => {
                                       'class' => 'Paws::CloudWatch::AnomalyDetector',
                                       'type' => 'ArrayRef[CloudWatch_AnomalyDetector]'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
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

Paws::CloudWatch::DescribeAnomalyDetectorsOutput

=head1 ATTRIBUTES


=head2 AnomalyDetectors => ArrayRef[CloudWatch_AnomalyDetector]

The list of anomaly detection models returned by the operation.


=head2 NextToken => Str

A token that you can use in a subsequent operation to retrieve the next
set of results.


=head2 _request_id => Str


=cut

