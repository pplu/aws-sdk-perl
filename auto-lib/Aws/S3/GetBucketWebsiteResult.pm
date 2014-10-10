
package Aws::S3::GetBucketWebsiteResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ErrorDocument => (is => 'ro', isa => 'Aws::S3::ErrorDocument');
  has IndexDocument => (is => 'ro', isa => 'Aws::S3::IndexDocument');
  has RedirectAllRequestsTo => (is => 'ro', isa => 'Aws::S3::RedirectAllRequestsTo');
  has RoutingRules => (is => 'ro', isa => 'ArrayRef[Aws::S3::RoutingRule]', traits => ['Unwrapped'], xmlname => 'RoutingRule');

}
1;