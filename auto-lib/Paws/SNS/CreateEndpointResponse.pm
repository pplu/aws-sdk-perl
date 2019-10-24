# Generated from callresult_class.tt

package Paws::SNS::CreateEndpointResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SNS::Types qw//;
  has EndpointArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EndpointArn' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::CreateEndpointResponse

=head1 ATTRIBUTES


=head2 EndpointArn => Str

EndpointArn returned from CreateEndpoint action.


=head2 _request_id => Str


=cut

