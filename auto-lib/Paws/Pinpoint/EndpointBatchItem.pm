package Paws::Pinpoint::EndpointBatchItem;
  use Moose;
  has Address => (is => 'ro', isa => 'Str');
  has Attributes => (is => 'ro', isa => 'Paws::Pinpoint::MapOfListOf__string');
  has ChannelType => (is => 'ro', isa => 'Str');
  has Demographic => (is => 'ro', isa => 'Paws::Pinpoint::EndpointDemographic');
  has EffectiveDate => (is => 'ro', isa => 'Str');
  has EndpointStatus => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Paws::Pinpoint::EndpointLocation');
  has Metrics => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__double');
  has OptOut => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has User => (is => 'ro', isa => 'Paws::Pinpoint::EndpointUser');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EndpointBatchItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EndpointBatchItem object:

  $service_obj->Method(Att1 => { Address => $value, ..., User => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EndpointBatchItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Address

=head1 DESCRIPTION

Specifies an endpoint to create or update and the settings and
attributes to set or change for the endpoint.

=head1 ATTRIBUTES


=head2 Address => Str

  The destination address for messages or push notifications that you
send to the endpoint. The address varies by channel. For a
push-notification channel, use the token provided by the push
notification service, such as an Apple Push Notification service (APNs)
device token or a Firebase Cloud Messaging (FCM) registration token.
For the SMS channel, use a phone number in E.164 format, such as
+12065550100. For the email channel, use an email address.


=head2 Attributes => L<Paws::Pinpoint::MapOfListOf__string>

  One or more custom attributes that describe the endpoint by associating
a name with an array of values. For example, the value of a custom
attribute named Interests might be: ["science", "music", "travel"]. You
can use these attributes as filter criteria when you create segments.

When you define the name of a custom attribute, avoid using the
following characters: number sign (#), colon (:), question mark (?),
backslash (\), and slash (/). The Amazon Pinpoint console can't display
attribute names that contain these characters. This limitation doesn't
apply to attribute values.


=head2 ChannelType => Str

  The channel to use when sending messages or push notifications to the
endpoint.


=head2 Demographic => L<Paws::Pinpoint::EndpointDemographic>

  The demographic information for the endpoint, such as the time zone and
platform.


=head2 EffectiveDate => Str

  The date and time, in ISO 8601 format, when the endpoint was created or
updated.


=head2 EndpointStatus => Str

  Specifies whether to send messages or push notifications to the
endpoint. Valid values are: ACTIVE, messages are sent to the endpoint;
and, INACTIVE, messages arenE<rsquo>t sent to the endpoint.

Amazon Pinpoint automatically sets this value to ACTIVE when you create
an endpoint or update an existing endpoint. Amazon Pinpoint
automatically sets this value to INACTIVE if you update another
endpoint that has the same address specified by the Address property.


=head2 Id => Str

  The unique identifier for the endpoint in the context of the batch.


=head2 Location => L<Paws::Pinpoint::EndpointLocation>

  The geographic information for the endpoint.


=head2 Metrics => L<Paws::Pinpoint::MapOf__double>

  One or more custom metrics that your app reports to Amazon Pinpoint for
the endpoint.


=head2 OptOut => Str

  Specifies whether the user who's associated with the endpoint has opted
out of receiving messages and push notifications from you. Possible
values are: ALL, the user has opted out and doesn't want to receive any
messages or push notifications; and, NONE, the user hasn't opted out
and wants to receive all messages and push notifications.


=head2 RequestId => Str

  The unique identifier for the request to create or update the endpoint.


=head2 User => L<Paws::Pinpoint::EndpointUser>

  One or more custom user attributes that your app reports to Amazon
Pinpoint for the user who's associated with the endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

