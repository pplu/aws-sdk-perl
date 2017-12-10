
package Paws::Pinpoint::SendUsersMessagesResponse;
  use Moose;
  has SendUsersMessageResponse => (is => 'ro', isa => 'Paws::Pinpoint::SendUsersMessageResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'SendUsersMessageResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SendUsersMessagesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SendUsersMessageResponse => L<Paws::Pinpoint::SendUsersMessageResponse>




=head2 _request_id => Str


=cut

