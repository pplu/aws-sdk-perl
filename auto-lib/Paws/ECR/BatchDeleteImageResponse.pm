# Generated from json/callresult_class.tt

package Paws::ECR::BatchDeleteImageResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECR::Types qw/ECR_ImageIdentifier ECR_ImageFailure/;
  has Failures => (is => 'ro', isa => ArrayRef[ECR_ImageFailure]);
  has ImageIds => (is => 'ro', isa => ArrayRef[ECR_ImageIdentifier]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Failures' => {
                               'class' => 'Paws::ECR::ImageFailure',
                               'type' => 'ArrayRef[ECR_ImageFailure]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ImageIds' => {
                               'class' => 'Paws::ECR::ImageIdentifier',
                               'type' => 'ArrayRef[ECR_ImageIdentifier]'
                             }
             },
  'NameInRequest' => {
                       'Failures' => 'failures',
                       'ImageIds' => 'imageIds'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECR::BatchDeleteImageResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[ECR_ImageFailure]

Any failures associated with the call.


=head2 ImageIds => ArrayRef[ECR_ImageIdentifier]

The image IDs of the deleted images.


=head2 _request_id => Str


=cut

1;