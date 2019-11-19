
package Paws::MediaConvert::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw/MediaConvert_ResourceTags/;
  has ResourceTags => (is => 'ro', isa => MediaConvert_ResourceTags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceTags' => {
                                   'class' => 'Paws::MediaConvert::ResourceTags',
                                   'type' => 'MediaConvert_ResourceTags'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ResourceTags' => 'resourceTags'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 ResourceTags => MediaConvert_ResourceTags

The Amazon Resource Name (ARN) and tags for an AWS Elemental
MediaConvert resource.


=head2 _request_id => Str


=cut

