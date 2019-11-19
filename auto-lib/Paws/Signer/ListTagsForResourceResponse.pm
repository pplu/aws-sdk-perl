
package Paws::Signer::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Signer::Types qw/Signer_TagMap/;
  has Tags => (is => 'ro', isa => Signer_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'Signer_TagMap',
                           'class' => 'Paws::Signer::TagMap'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => Signer_TagMap

A list of tags associated with the signing profile.


=head2 _request_id => Str


=cut

