
package Paws::Glue::GetCrawlerMetricsResponse;
  use Moose;
  has CrawlerMetricsList => (is => 'ro', isa => 'ArrayRef[Paws::Glue::CrawlerMetrics]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetCrawlerMetricsResponse

=head1 ATTRIBUTES


=head2 CrawlerMetricsList => ArrayRef[L<Paws::Glue::CrawlerMetrics>]

A list of metrics for the specified crawler.


=head2 NextToken => Str

A continuation token, if the returned list does not contain the last
metric available.


=head2 _request_id => Str


=cut

1;