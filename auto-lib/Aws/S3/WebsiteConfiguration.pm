package Aws::S3::WebsiteConfiguration {
  use Moose;
  has ErrorDocument => (is => 'ro', isa => 'Aws::S3::ErrorDocument');
  has IndexDocument => (is => 'ro', isa => 'Aws::S3::IndexDocument');
  has RedirectAllRequestsTo => (is => 'ro', isa => 'Aws::S3::RedirectAllRequestsTo');
  has RoutingRules => (is => 'ro', isa => 'ArrayRef[Aws::S3::RoutingRule]');
}
1
