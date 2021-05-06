
package Paws::Pinpoint::GetPushTemplateResponse;
  use Moose;
  has PushNotificationTemplateResponse => (is => 'ro', isa => 'Paws::Pinpoint::PushNotificationTemplateResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'PushNotificationTemplateResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetPushTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> PushNotificationTemplateResponse => L<Paws::Pinpoint::PushNotificationTemplateResponse>




=head2 _request_id => Str


=cut

