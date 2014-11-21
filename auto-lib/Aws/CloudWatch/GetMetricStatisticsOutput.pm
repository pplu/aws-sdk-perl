
package Aws::CloudWatch::GetMetricStatisticsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has Datapoints => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::Datapoint]');
  has Label => (is => 'ro', isa => 'Str');

}
1;