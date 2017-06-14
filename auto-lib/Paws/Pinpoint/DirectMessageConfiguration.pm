package Paws::Pinpoint::DirectMessageConfiguration;
  use Moose;
  has APNSMessage => (is => 'ro', isa => 'Paws::Pinpoint::APNSMessage');
  has DefaultMessage => (is => 'ro', isa => 'Paws::Pinpoint::DefaultMessage');
  has DefaultPushNotificationMessage => (is => 'ro', isa => 'Paws::Pinpoint::DefaultPushNotificationMessage');
  has GCMMessage => (is => 'ro', isa => 'Paws::Pinpoint::GCMMessage');
  has SMSMessage => (is => 'ro', isa => 'Paws::Pinpoint::SMSMessage');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DirectMessageConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::DirectMessageConfiguration object:

  $service_obj->Method(Att1 => { APNSMessage => $value, ..., SMSMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::DirectMessageConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->APNSMessage

=head1 DESCRIPTION

The message configuration.

=head1 ATTRIBUTES


=head2 APNSMessage => L<Paws::Pinpoint::APNSMessage>

  The message to APNS channels. Overrides the default push notification
message.


=head2 DefaultMessage => L<Paws::Pinpoint::DefaultMessage>

  The default message for all channels.


=head2 DefaultPushNotificationMessage => L<Paws::Pinpoint::DefaultPushNotificationMessage>

  The default push notification message for all push channels.


=head2 GCMMessage => L<Paws::Pinpoint::GCMMessage>

  The message to GCM channels. Overrides the default push notification
message.


=head2 SMSMessage => L<Paws::Pinpoint::SMSMessage>

  The message to SMS channels. Overrides the default message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

