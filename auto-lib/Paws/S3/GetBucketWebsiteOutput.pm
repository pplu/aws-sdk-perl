
package Paws::S3::GetBucketWebsiteOutput;
  use Moose;
  has ErrorDocument => (is => 'ro', isa => 'Paws::S3::ErrorDocument');
  has IndexDocument => (is => 'ro', isa => 'Paws::S3::IndexDocument');
  has RedirectAllRequestsTo => (is => 'ro', isa => 'Paws::S3::RedirectAllRequestsTo');
  has RoutingRules => (is => 'ro', isa => 'ArrayRef[Paws::S3::RoutingRule]', request_name => 'RoutingRule', traits => ['NameInRequest']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketWebsiteOutput

=head1 ATTRIBUTES


=head2 ErrorDocument => L<Paws::S3::ErrorDocument>

The object key name of the website error document to use for 4XX class
errors.



=head2 IndexDocument => L<Paws::S3::IndexDocument>

The name of the index document for the website (for example
C<index.html>).



=head2 RedirectAllRequestsTo => L<Paws::S3::RedirectAllRequestsTo>

Specifies the redirect behavior of all requests to a website endpoint
of an Amazon S3 bucket.



=head2 RoutingRules => ArrayRef[L<Paws::S3::RoutingRule>]

Rules that define when a redirect is applied and the redirect behavior.




=cut

