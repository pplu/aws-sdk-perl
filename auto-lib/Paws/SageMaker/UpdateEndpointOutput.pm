# Generated from json/callresult_class.tt

package Paws::SageMaker::UpdateEndpointOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw//;
  has EndpointArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'EndpointArn' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EndpointArn' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateEndpointOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointArn => Str

The Amazon Resource Name (ARN) of the endpoint.


=head2 _request_id => Str


=cut

1;