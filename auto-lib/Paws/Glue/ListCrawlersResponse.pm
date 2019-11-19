# Generated from json/callresult_class.tt

package Paws::Glue::ListCrawlersResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::Glue::Types qw//;
  has CrawlerNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CrawlerNames' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


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