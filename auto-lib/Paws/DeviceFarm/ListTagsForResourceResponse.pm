# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[DeviceFarm_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::DeviceFarm::Tag',
                           'type' => 'ArrayRef[DeviceFarm_Tag]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[DeviceFarm_Tag]

The tags to add to the resource. A tag is an array of key-value pairs.
Tag keys can have a maximum character length of 128 characters, and tag
values can have a maximum length of 256 characters.


=head2 _request_id => Str


=cut

1;