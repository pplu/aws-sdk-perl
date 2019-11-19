
package Paws::Amplify::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw/Amplify_TagMap/;
  has Tags => (is => 'ro', isa => Amplify_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'Amplify_TagMap',
                           'class' => 'Paws::Amplify::TagMap'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => Amplify_TagMap

Tags result for response.


=head2 _request_id => Str


=cut

