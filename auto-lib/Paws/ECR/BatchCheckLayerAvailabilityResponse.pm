# Generated from json/callresult_class.tt

package Paws::ECR::BatchCheckLayerAvailabilityResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECR::Types qw/ECR_Layer ECR_LayerFailure/;
  has Failures => (is => 'ro', isa => ArrayRef[ECR_LayerFailure]);
  has Layers => (is => 'ro', isa => ArrayRef[ECR_Layer]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Failures' => {
                               'type' => 'ArrayRef[ECR_LayerFailure]',
                               'class' => 'Paws::ECR::LayerFailure'
                             },
               'Layers' => {
                             'type' => 'ArrayRef[ECR_Layer]',
                             'class' => 'Paws::ECR::Layer'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Failures' => 'failures',
                       'Layers' => 'layers'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECR::BatchCheckLayerAvailabilityResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[ECR_LayerFailure]

Any failures associated with the call.


=head2 Layers => ArrayRef[ECR_Layer]

A list of image layer objects corresponding to the image layer
references in the request.


=head2 _request_id => Str


=cut

1;