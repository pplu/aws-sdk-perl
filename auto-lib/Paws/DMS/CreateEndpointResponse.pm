# Generated from json/callresult_class.tt

package Paws::DMS::CreateEndpointResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DMS::Types qw/DMS_Endpoint/;
  has Endpoint => (is => 'ro', isa => DMS_Endpoint);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Endpoint' => {
                               'type' => 'DMS_Endpoint',
                               'class' => 'Paws::DMS::Endpoint'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateEndpointResponse

=head1 ATTRIBUTES


=head2 Endpoint => DMS_Endpoint

The endpoint that was created.


=head2 _request_id => Str


=cut

1;