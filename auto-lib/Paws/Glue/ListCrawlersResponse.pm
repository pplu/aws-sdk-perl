
package Paws::Glue::ListCrawlersResponse;
  use Moose;
  has CrawlerNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListCrawlersResponse

=head1 ATTRIBUTES


=head2 CrawlerNames => ArrayRef[Str|Undef]

The names of all crawlers in the account, or the crawlers with the
specified tags.


=head2 NextToken => Str

A continuation token, if the returned list does not contain the last
metric available.


=head2 _request_id => Str


=cut

1;