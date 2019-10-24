# Generated from json/callresult_class.tt

package Paws::ECR::PutImageResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECR::Types qw/ECR_Image/;
  has Image => (is => 'ro', isa => ECR_Image);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Image' => {
                            'class' => 'Paws::ECR::Image',
                            'type' => 'ECR_Image'
                          }
             },
  'NameInRequest' => {
                       'Image' => 'image'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECR::PutImageResponse

=head1 ATTRIBUTES


=head2 Image => ECR_Image

Details of the image uploaded.


=head2 _request_id => Str


=cut

1;