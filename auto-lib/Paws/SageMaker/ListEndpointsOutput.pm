# Generated from json/callresult_class.tt

package Paws::SageMaker::ListEndpointsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_EndpointSummary/;
  has Endpoints => (is => 'ro', isa => ArrayRef[SageMaker_EndpointSummary], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Endpoints' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Endpoints' => {
                                'class' => 'Paws::SageMaker::EndpointSummary',
                                'type' => 'ArrayRef[SageMaker_EndpointSummary]'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListEndpointsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Endpoints => ArrayRef[SageMaker_EndpointSummary]

An array or endpoint objects.


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of training jobs, use it in the subsequent
request.


=head2 _request_id => Str


=cut

1;