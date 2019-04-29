
package Paws::Glue::BatchGetCrawlersResponse;
  use Moose;
  has Crawlers => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Crawler]');
  has CrawlersNotFound => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetCrawlersResponse

=head1 ATTRIBUTES


=head2 Crawlers => ArrayRef[L<Paws::Glue::Crawler>]

A list of crawler definitions.


=head2 CrawlersNotFound => ArrayRef[Str|Undef]

A list of names of crawlers not found.


=head2 _request_id => Str


=cut

1;