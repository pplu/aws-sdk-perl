
package Paws::Greengrass::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw/Greengrass_Tags/;
  has Tags => (is => 'ro', isa => Greengrass_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'Greengrass_Tags',
                           'class' => 'Paws::Greengrass::Tags'
                         },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::Greengrass::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => Greengrass_Tags




=head2 _request_id => Str


=cut

