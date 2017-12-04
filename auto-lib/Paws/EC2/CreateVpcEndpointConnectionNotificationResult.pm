
package Paws::EC2::CreateVpcEndpointConnectionNotificationResult;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest',]);
  has ConnectionNotification => (is => 'ro', isa => 'Paws::EC2::ConnectionNotification', request_name => 'connectionNotification', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpcEndpointConnectionNotificationResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request.


=head2 ConnectionNotification => L<Paws::EC2::ConnectionNotification>

Information about the notification.


=head2 _request_id => Str


=cut

