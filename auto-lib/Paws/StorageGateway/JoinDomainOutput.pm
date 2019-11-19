# Generated from json/callresult_class.tt

package Paws::StorageGateway::JoinDomainOutput;
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

Paws::StorageGateway::JoinDomainOutput

=head1 ATTRIBUTES


=head2 GatewayARN => Str

The unique Amazon Resource Name (ARN) of the gateway that joined the
domain.


=head2 _request_id => Str


=cut

1;