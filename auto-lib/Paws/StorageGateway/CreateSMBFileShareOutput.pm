
package Paws::StorageGateway::CreateSMBFileShareOutput;
  use Moose;
  has FileShareARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateSMBFileShareOutput

=head1 ATTRIBUTES


=head2 FileShareARN => Str

The Amazon Resource Name (ARN) of the newly created file share.


=head2 _request_id => Str


=cut

1;