
package Paws::CloudWatch::DescribeAnomalyDetectorsOutput;
  use Moose;
  has AnomalyDetectors => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::AnomalyDetector]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::DescribeAnomalyDetectorsOutput

=head1 ATTRIBUTES


=head2 AnomalyDetectors => ArrayRef[L<Paws::CloudWatch::AnomalyDetector>]

The list of anomaly detection models returned by the operation.


=head2 NextToken => Str

A token that you can use in a subsequent operation to retrieve the next
set of results.


=head2 _request_id => Str


=cut

