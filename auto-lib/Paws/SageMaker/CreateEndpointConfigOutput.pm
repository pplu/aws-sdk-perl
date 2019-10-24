# Generated from json/callresult_class.tt

package Paws::SageMaker::CreateEndpointConfigOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw//;
  has EndpointConfigArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EndpointConfigArn' => {
                                        'type' => 'Str'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'EndpointConfigArn' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateEndpointConfigOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointConfigArn => Str

The Amazon Resource Name (ARN) of the endpoint configuration.


=head2 _request_id => Str


=cut

1;