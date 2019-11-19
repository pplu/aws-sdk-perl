# Generated from json/callresult_class.tt

package Paws::StorageGateway::UpdateNFSFileShareOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw//;
  has FileShareARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FileShareARN' => {
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

Paws::StorageGateway::UpdateNFSFileShareOutput

=head1 ATTRIBUTES


=head2 FileShareARN => Str

The Amazon Resource Name (ARN) of the updated file share.


=head2 _request_id => Str


=cut

1;