# Generated from json/callresult_class.tt

package Paws::SageMaker::ListEndpointConfigsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_EndpointConfigSummary/;
  has EndpointConfigs => (is => 'ro', isa => ArrayRef[SageMaker_EndpointConfigSummary], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EndpointConfigs' => {
                                      'class' => 'Paws::SageMaker::EndpointConfigSummary',
                                      'type' => 'ArrayRef[SageMaker_EndpointConfigSummary]'
                                    }
             },
  'IsRequired' => {
                    'EndpointConfigs' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListEndpointConfigsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointConfigs => ArrayRef[SageMaker_EndpointConfigSummary]

An array of endpoint configurations.


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of endpoint configurations, use it in the
subsequent request


=head2 _request_id => Str


=cut

1;