
package Paws::DLM::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DLM::Types qw/DLM_TagMap/;
  has Tags => (is => 'ro', isa => DLM_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::DLM::TagMap',
                           'type' => 'DLM_TagMap'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => DLM_TagMap

Information about the tags.


=head2 _request_id => Str


=cut

