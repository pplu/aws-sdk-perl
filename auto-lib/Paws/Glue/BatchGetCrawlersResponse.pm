# Generated from json/callresult_class.tt

package Paws::Glue::BatchGetCrawlersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Glue::Types qw/Glue_Crawler/;
  has Crawlers => (is => 'ro', isa => ArrayRef[Glue_Crawler]);
  has CrawlersNotFound => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CrawlersNotFound' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'Crawlers' => {
                               'type' => 'ArrayRef[Glue_Crawler]',
                               'class' => 'Paws::Glue::Crawler'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetCrawlersResponse

=head1 ATTRIBUTES


=head2 Crawlers => ArrayRef[Glue_Crawler]

A list of crawler definitions.


=head2 CrawlersNotFound => ArrayRef[Str|Undef]

A list of names of crawlers that were not found.


=head2 _request_id => Str


=cut

1;