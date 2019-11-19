# Generated from json/callresult_class.tt

package Paws::MachineLearning::DeleteRealtimeEndpointOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MachineLearning::Types qw/MachineLearning_RealtimeEndpointInfo/;
  has MLModelId => (is => 'ro', isa => Str);
  has RealtimeEndpointInfo => (is => 'ro', isa => MachineLearning_RealtimeEndpointInfo);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RealtimeEndpointInfo' => {
                                           'class' => 'Paws::MachineLearning::RealtimeEndpointInfo',
                                           'type' => 'MachineLearning_RealtimeEndpointInfo'
                                         },
               'MLModelId' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::DeleteRealtimeEndpointOutput

=head1 ATTRIBUTES


=head2 MLModelId => Str

A user-supplied ID that uniquely identifies the C<MLModel>. This value
should be identical to the value of the C<MLModelId> in the request.


=head2 RealtimeEndpointInfo => MachineLearning_RealtimeEndpointInfo

The endpoint information of the C<MLModel>


=head2 _request_id => Str


=cut

1;