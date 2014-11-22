
package Paws::CloudWatch::ListMetricsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Metrics => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Metric]');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;