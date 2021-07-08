
package Paws::StorageGateway::DescribeFileSystemAssociationsOutput;
  use Moose;
  has FileSystemAssociationInfoList => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::FileSystemAssociationInfo]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeFileSystemAssociationsOutput

=head1 ATTRIBUTES


=head2 FileSystemAssociationInfoList => ArrayRef[L<Paws::StorageGateway::FileSystemAssociationInfo>]

An array containing the C<FileSystemAssociationInfo> data type of each
file system association to be described.


=head2 _request_id => Str


=cut

1;