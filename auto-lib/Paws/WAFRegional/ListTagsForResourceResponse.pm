# Generated from json/callresult_class.tt

package Paws::WAFRegional::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_TagInfoForResource/;
  has NextMarker => (is => 'ro', isa => Str);
  has TagInfoForResource => (is => 'ro', isa => WAFRegional_TagInfoForResource);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagInfoForResource' => {
                                         'class' => 'Paws::WAFRegional::TagInfoForResource',
                                         'type' => 'WAFRegional_TagInfoForResource'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextMarker' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str




=head2 TagInfoForResource => WAFRegional_TagInfoForResource




=head2 _request_id => Str


=cut

1;