# Generated from json/callresult_class.tt

package Paws::StorageGateway::DescribeNFSFileSharesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StorageGateway::Types qw/StorageGateway_NFSFileShareInfo/;
  has NFSFileShareInfoList => (is => 'ro', isa => ArrayRef[StorageGateway_NFSFileShareInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NFSFileShareInfoList' => {
                                           'class' => 'Paws::StorageGateway::NFSFileShareInfo',
                                           'type' => 'ArrayRef[StorageGateway_NFSFileShareInfo]'
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

Paws::StorageGateway::DescribeNFSFileSharesOutput

=head1 ATTRIBUTES


=head2 NFSFileShareInfoList => ArrayRef[StorageGateway_NFSFileShareInfo]

An array containing a description for each requested file share.


=head2 _request_id => Str


=cut

1;