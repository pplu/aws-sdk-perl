
package Paws::StorageGateway::NotifyWhenUploadedOutput;
  use Moose;
  has FileShareARN => (is => 'ro', isa => 'Str');
  has NotificationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::NotifyWhenUploadedOutput

=head1 ATTRIBUTES


=head2 FileShareARN => Str




=head2 NotificationId => Str




=head2 _request_id => Str


=cut

1;