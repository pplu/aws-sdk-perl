# Generated from json/callresult_class.tt

package Paws::MediaStore::DescribeContainerOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaStore::Types qw/MediaStore_Container/;
  has Container => (is => 'ro', isa => MediaStore_Container);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Container' => {
                                'type' => 'MediaStore_Container',
                                'class' => 'Paws::MediaStore::Container'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::DescribeContainerOutput

=head1 ATTRIBUTES


=head2 Container => MediaStore_Container

The name of the queried container.


=head2 _request_id => Str


=cut

1;