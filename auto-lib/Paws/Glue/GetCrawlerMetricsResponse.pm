# Generated from json/callresult_class.tt

package Paws::Glue::GetCrawlerMetricsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_CrawlerMetrics/;
  has CrawlerMetricsList => (is => 'ro', isa => ArrayRef[Glue_CrawlerMetrics]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CrawlerMetricsList' => {
                                         'type' => 'ArrayRef[Glue_CrawlerMetrics]',
                                         'class' => 'Paws::Glue::CrawlerMetrics'
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

Paws::Glue::GetCrawlerMetricsResponse

=head1 ATTRIBUTES


=head2 CrawlerMetricsList => ArrayRef[Glue_CrawlerMetrics]

A list of metrics for the specified crawler.


=head2 NextToken => Str

A continuation token, if the returned list does not contain the last
metric available.


=head2 _request_id => Str


=cut

1;