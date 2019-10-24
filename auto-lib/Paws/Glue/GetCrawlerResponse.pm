# Generated from json/callresult_class.tt

package Paws::Glue::GetCrawlerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_Crawler/;
  has Crawler => (is => 'ro', isa => Glue_Crawler);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Crawler' => {
                              'class' => 'Paws::Glue::Crawler',
                              'type' => 'Glue_Crawler'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetCrawlerResponse

=head1 ATTRIBUTES


=head2 Crawler => Glue_Crawler

The metadata for the specified crawler.


=head2 _request_id => Str


=cut

1;