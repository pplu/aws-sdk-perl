
package Paws::MediaPackage::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackage::Types qw/MediaPackage___mapOf__string/;
  has Tags => (is => 'ro', isa => MediaPackage___mapOf__string);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::MediaPackage::__mapOf__string',
                           'type' => 'MediaPackage___mapOf__string'
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

Paws::MediaPackage::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => MediaPackage___mapOf__string




=head2 _request_id => Str


=cut

