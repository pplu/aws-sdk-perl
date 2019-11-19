# Generated from json/callresult_class.tt

package Paws::StorageGateway::DescribeSMBFileSharesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StorageGateway::Types qw/StorageGateway_SMBFileShareInfo/;
  has SMBFileShareInfoList => (is => 'ro', isa => ArrayRef[StorageGateway_SMBFileShareInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SMBFileShareInfoList' => {
                                           'type' => 'ArrayRef[StorageGateway_SMBFileShareInfo]',
                                           'class' => 'Paws::StorageGateway::SMBFileShareInfo'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeSMBFileSharesOutput

=head1 ATTRIBUTES


=head2 SMBFileShareInfoList => ArrayRef[StorageGateway_SMBFileShareInfo]

An array containing a description for each requested file share.


=head2 _request_id => Str


=cut

1;