# Generated from json/callresult_class.tt

package Paws::StorageGateway::UpdateSMBFileShareOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw//;
  has FileShareARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FileShareARN' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateSMBFileShareOutput

=head1 ATTRIBUTES


=head2 FileShareARN => Str

The Amazon Resource Name (ARN) of the updated SMB file share.


=head2 _request_id => Str


=cut

1;