# Generated from json/callresult_class.tt

package Paws::StorageGateway::AddWorkingStorageOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw//;
  has GatewayARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
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

Paws::StorageGateway::AddWorkingStorageOutput

=head1 ATTRIBUTES


=head2 GatewayARN => Str




=head2 _request_id => Str


=cut

1;