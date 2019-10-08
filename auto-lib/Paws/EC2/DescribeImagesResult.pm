
package Paws::EC2::DescribeImagesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_Image/;
  has Images => (is => 'ro', isa => ArrayRef[EC2_Image]);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Images' => {
                             'class' => 'Paws::EC2::Image',
                             'type' => 'ArrayRef[EC2_Image]'
                           }
             },
  'NameInRequest' => {
                       'Images' => 'imagesSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeImagesResult

=head1 ATTRIBUTES


=head2 Images => ArrayRef[EC2_Image]

Information about the images.


=head2 _request_id => Str


=cut

