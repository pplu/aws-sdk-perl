
package Paws::Glue::GetCrawlersResponse;
  use Moose;
  has Crawlers => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Crawler]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetCrawlersResponse

=head1 ATTRIBUTES


=head2 Crawlers => ArrayRef[L<Paws::Glue::Crawler>]

A list of crawler metadata.


=head2 NextToken => Str

A continuation token, if the returned list has not reached the end of
those defined in this customer account.


=head2 _request_id => Str


=cut

1;