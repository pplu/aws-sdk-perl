# Generated from json/callresult_class.tt

package Paws::StorageGateway::UpdateGatewayInformationOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw//;
  has GatewayARN => (is => 'ro', isa => Str);
  has GatewayName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GatewayName' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GatewayARN' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateGatewayInformationOutput

=head1 ATTRIBUTES


=head2 GatewayARN => Str




=head2 GatewayName => Str

The name you configured for your gateway.


=head2 _request_id => Str


=cut

1;