package Paws::Pinpoint::PushNotificationTemplateResponse;
  use Moose;
  has ADM => (is => 'ro', isa => 'Paws::Pinpoint::AndroidPushNotificationTemplate');
  has APNS => (is => 'ro', isa => 'Paws::Pinpoint::APNSPushNotificationTemplate');
  has Arn => (is => 'ro', isa => 'Str');
  has Baidu => (is => 'ro', isa => 'Paws::Pinpoint::AndroidPushNotificationTemplate');
  has CreationDate => (is => 'ro', isa => 'Str', required => 1);
  has Default => (is => 'ro', isa => 'Paws::Pinpoint::DefaultPushNotificationTemplate');
  has DefaultSubstitutions => (is => 'ro', isa => 'Str');
  has GCM => (is => 'ro', isa => 'Paws::Pinpoint::AndroidPushNotificationTemplate');
  has LastModifiedDate => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string', request_name => 'tags', traits => ['NameInRequest']);
  has TemplateDescription => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);
  has TemplateType => (is => 'ro', isa => 'Str', required => 1);
  has Version => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::PushNotificationTemplateResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::PushNotificationTemplateResponse object:

  $service_obj->Method(Att1 => { ADM => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::PushNotificationTemplateResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ADM

=head1 DESCRIPTION

Provides information about the content and settings for a message
template that can be used in messages that are sent through a push
notification channel.

=head1 ATTRIBUTES


=head2 ADM => L<Paws::Pinpoint::AndroidPushNotificationTemplate>

  The message template that's used for the ADM (Amazon Device Messaging)
channel. This message template overrides the default template for push
notification channels (DefaultPushNotificationTemplate).


=head2 APNS => L<Paws::Pinpoint::APNSPushNotificationTemplate>

  The message template that's used for the APNs (Apple Push Notification
service) channel. This message template overrides the default template
for push notification channels (DefaultPushNotificationTemplate).


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the message template.


=head2 Baidu => L<Paws::Pinpoint::AndroidPushNotificationTemplate>

  The message template that's used for the Baidu (Baidu Cloud Push)
channel. This message template overrides the default template for push
notification channels (DefaultPushNotificationTemplate).


=head2 B<REQUIRED> CreationDate => Str

  The date, in ISO 8601 format, when the message template was created.


=head2 Default => L<Paws::Pinpoint::DefaultPushNotificationTemplate>

  The default message template that's used for push notification
channels.


=head2 DefaultSubstitutions => Str

  The JSON object that specifies the default values that are used for
message variables in the message template. This object is a set of
key-value pairs. Each key defines a message variable in the template.
The corresponding value defines the default value for that variable.


=head2 GCM => L<Paws::Pinpoint::AndroidPushNotificationTemplate>

  The message template that's used for the GCM channel, which is used to
send notifications through the Firebase Cloud Messaging (FCM), formerly
Google Cloud Messaging (GCM), service. This message template overrides
the default template for push notification channels
(DefaultPushNotificationTemplate).


=head2 B<REQUIRED> LastModifiedDate => Str

  The date, in ISO 8601 format, when the message template was last
modified.


=head2 Tags => L<Paws::Pinpoint::MapOf__string>

  A string-to-string map of key-value pairs that identifies the tags that
are associated with the message template. Each tag consists of a
required tag key and an associated tag value.


=head2 TemplateDescription => Str

  The custom description of the message template.


=head2 B<REQUIRED> TemplateName => Str

  The name of the message template.


=head2 B<REQUIRED> TemplateType => Str

  The type of channel that the message template is designed for. For a
push notification template, this value is PUSH.


=head2 Version => Str

  The unique identifier, as an integer, for the active version of the
message template, or the version of the template that you specified by
using the version parameter in your request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

