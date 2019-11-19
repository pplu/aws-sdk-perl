# Generated from json/callresult_class.tt

package Paws::ECR::BatchGetImageResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECR::Types qw/ECR_ImageFailure ECR_Image/;
  has Failures => (is => 'ro', isa => ArrayRef[ECR_ImageFailure]);
  has Images => (is => 'ro', isa => ArrayRef[ECR_Image]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Images' => 'images',
                       'Failures' => 'failures'
                     },
  'types' => {
               'Images' => {
                             'type' => 'ArrayRef[ECR_Image]',
                             'class' => 'Paws::ECR::Image'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Failures' => {
                               'class' => 'Paws::ECR::ImageFailure',
                               'type' => 'ArrayRef[ECR_ImageFailure]'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECR::BatchGetImageResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[ECR_ImageFailure]

Any failures associated with the call.


=head2 Images => ArrayRef[ECR_Image]

A list of image objects corresponding to the image references in the
request.


=head2 _request_id => Str


=cut

1;