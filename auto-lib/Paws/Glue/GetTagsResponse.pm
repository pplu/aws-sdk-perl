# Generated from json/callresult_class.tt

package Paws::Glue::GetTagsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_TagsMap/;
  has Tags => (is => 'ro', isa => Glue_TagsMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'Glue_TagsMap',
                           'class' => 'Paws::Glue::TagsMap'
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

Paws::Glue::GetTagsResponse

=head1 ATTRIBUTES


=head2 Tags => Glue_TagsMap

The requested tags.


=head2 _request_id => Str


=cut

1;