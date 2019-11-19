# Generated from json/callresult_class.tt

package Paws::DMS::ModifyEndpointResponse;
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
                               'class' => 'Paws::DMS::Endpoint',
                               'type' => 'DMS_Endpoint'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::ModifyEndpointResponse

=head1 ATTRIBUTES


=head2 Endpoint => DMS_Endpoint

The modified endpoint.


=head2 _request_id => Str


=cut

1;