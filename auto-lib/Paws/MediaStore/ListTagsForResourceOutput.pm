# Generated from json/callresult_class.tt

package Paws::MediaStore::ListTagsForResourceOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaStore::Types qw/MediaStore_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[MediaStore_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::MediaStore::Tag',
                           'type' => 'ArrayRef[MediaStore_Tag]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[MediaStore_Tag]

An array of key:value pairs that are assigned to the container.


=head2 _request_id => Str


=cut

1;