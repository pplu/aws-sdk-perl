# Generated from json/callresult_class.tt

package Paws::StorageGateway::ActivateGatewayOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw//;
  has GatewayARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GatewayARN' => {
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


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ActivateGatewayOutput

=head1 ATTRIBUTES


=head2 GatewayARN => Str




=head2 _request_id => Str


=cut

1;