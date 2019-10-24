# Generated from json/callresult_class.tt

package Paws::AppStream::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppStream::Types qw/AppStream_Tags/;
  has Tags => (is => 'ro', isa => AppStream_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::AppStream::Tags',
                           'type' => 'AppStream_Tags'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AppStream::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => AppStream_Tags

The information about the tags.


=head2 _request_id => Str


=cut

1;