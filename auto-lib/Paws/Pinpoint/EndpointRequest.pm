package Paws::Pinpoint::EndpointRequest;
  use Moose;
  has Address => (is => 'ro', isa => 'Str');
  has Attributes => (is => 'ro', isa => 'Paws::Pinpoint::MapOfListOf__string');
  has ChannelType => (is => 'ro', isa => 'Str');
  has Demographic => (is => 'ro', isa => 'Paws::Pinpoint::EndpointDemographic');
  has EffectiveDate => (is => 'ro', isa => 'Str');
  has EndpointStatus => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Paws::Pinpoint::EndpointLocation');
  has Metrics => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__double');
  has OptOut => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has User => (is => 'ro', isa => 'Paws::Pinpoint::EndpointUser');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EndpointRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EndpointRequest object:

  $service_obj->Method(Att1 => { Address => $value, ..., User => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EndpointRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Address

=head1 DESCRIPTION

An endpoint update request.

=head1 ATTRIBUTES


=head2 Address => Str

  The destination for messages that you send to this endpoint. The
address varies by channel. For mobile push channels, use the token
provided by the push notification service, such as the APNs device
token or the FCM registration token. For the SMS channel, use a phone
number in E.164 format, such as +12065550100. For the email channel,
use an email address.


=head2 Attributes => L<Paws::Pinpoint::MapOfListOf__string>

  Custom attributes that describe the endpoint by associating a name with
an array of values. For example, an attribute named "interests" might
have the values ["science", "politics", "travel"]. You can use these
attributes as selection criteria when you create a segment of users to
engage with a messaging campaign. The following characters are not
recommended in attribute names: # : ? \ /. The Amazon Pinpoint console
does not display attributes that include these characters in the name.
This limitation does not apply to attribute values.


=head2 ChannelType => Str

  The channel type. Valid values: GCM | APNS | APNS_SANDBOX | APNS_VOIP |
APNS_VOIP_SANDBOX | ADM | SMS | EMAIL | BAIDU


=head2 Demographic => L<Paws::Pinpoint::EndpointDemographic>

  Demographic attributes for the endpoint.


=head2 EffectiveDate => Str

  The date and time when the endpoint was updated, shown in ISO 8601
format.


=head2 EndpointStatus => Str

  Unused.


=head2 Location => L<Paws::Pinpoint::EndpointLocation>

  The endpoint location attributes.


=head2 Metrics => L<Paws::Pinpoint::MapOf__double>

  Custom metrics that your app reports to Amazon Pinpoint.


=head2 OptOut => Str

  Indicates whether a user has opted out of receiving messages with one
of the following values: ALL - User has opted out of all messages. NONE
- Users has not opted out and receives all messages.


=head2 RequestId => Str

  The unique ID for the most recent request to update the endpoint.


=head2 User => L<Paws::Pinpoint::EndpointUser>

  Custom user-specific attributes that your app reports to Amazon
Pinpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

