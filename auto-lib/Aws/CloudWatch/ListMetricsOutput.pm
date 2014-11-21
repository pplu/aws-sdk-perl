
package Aws::CloudWatch::ListMetricsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has Metrics => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::Metric]');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;