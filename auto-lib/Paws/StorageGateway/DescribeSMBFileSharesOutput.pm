
package Paws::StorageGateway::DescribeSMBFileSharesOutput;
  use Moose;
  has SMBFileShareInfoList => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::SMBFileShareInfo]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeSMBFileSharesOutput

=head1 ATTRIBUTES


=head2 SMBFileShareInfoList => ArrayRef[L<Paws::StorageGateway::SMBFileShareInfo>]

An array containing a description for each requested file share.


=head2 _request_id => Str


=cut

1;