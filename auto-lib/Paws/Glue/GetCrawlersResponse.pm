# Generated from json/callresult_class.tt

package Paws::Glue::GetCrawlersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_Crawler/;
  has Crawlers => (is => 'ro', isa => ArrayRef[Glue_Crawler]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Crawlers' => {
                               'class' => 'Paws::Glue::Crawler',
                               'type' => 'ArrayRef[Glue_Crawler]'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetCrawlersResponse

=head1 ATTRIBUTES


=head2 Crawlers => ArrayRef[Glue_Crawler]

A list of crawler metadata.


=head2 NextToken => Str

A continuation token, if the returned list has not reached the end of
those defined in this customer account.


=head2 _request_id => Str


=cut

1;