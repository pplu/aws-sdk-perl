
package Paws::StorageGateway::DescribeNFSFileSharesOutput;
  use Moose;
  has NFSFileShareInfoList => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::NFSFileShareInfo]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeNFSFileSharesOutput

=head1 ATTRIBUTES


=head2 NFSFileShareInfoList => ArrayRef[L<Paws::StorageGateway::NFSFileShareInfo>]

An array containing a description for each requested file share.


=head2 _request_id => Str


=cut

1;