# Generated from json/callresult_class.tt

package Paws::AppStream::DeleteImageResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppStream::Types qw/AppStream_Image/;
  has Image => (is => 'ro', isa => AppStream_Image);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Image' => {
                            'type' => 'AppStream_Image',
                            'class' => 'Paws::AppStream::Image'
                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DeleteImageResult

=head1 ATTRIBUTES


=head2 Image => AppStream_Image

Information about the image.


=head2 _request_id => Str


=cut

1;