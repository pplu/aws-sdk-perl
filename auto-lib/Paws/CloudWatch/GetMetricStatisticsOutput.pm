
package Paws::CloudWatch::GetMetricStatisticsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Datapoints => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Datapoint]');
  has Label => (is => 'ro', isa => 'Str');

}
1;