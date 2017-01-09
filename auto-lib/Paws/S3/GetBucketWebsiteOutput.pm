
package Paws::S3::GetBucketWebsiteOutput;
  use Moose;
  has ErrorDocument => (is => 'ro', isa => 'Paws::S3::ErrorDocument');
  has IndexDocument => (is => 'ro', isa => 'Paws::S3::IndexDocument');
  has RedirectAllRequestsTo => (is => 'ro', isa => 'Paws::S3::RedirectAllRequestsTo');
  has RoutingRules => (is => 'ro', isa => 'ArrayRef[Paws::S3::RoutingRule]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketWebsiteOutput

=head1 ATTRIBUTES


=head2 ErrorDocument => L<Paws::S3::ErrorDocument>





=head2 IndexDocument => L<Paws::S3::IndexDocument>





=head2 RedirectAllRequestsTo => L<Paws::S3::RedirectAllRequestsTo>





=head2 RoutingRules => ArrayRef[L<Paws::S3::RoutingRule>]






=cut

