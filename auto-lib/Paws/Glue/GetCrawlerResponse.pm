
package Paws::Glue::GetCrawlerResponse;
  use Moose;
  has Crawler => (is => 'ro', isa => 'Paws::Glue::Crawler');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetCrawlerResponse

=head1 ATTRIBUTES


=head2 Crawler => L<Paws::Glue::Crawler>

The metadata for the specified crawler.


=head2 _request_id => Str


=cut

1;