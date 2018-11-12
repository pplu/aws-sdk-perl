package Paws::Pinpoint::PublicEndpoint;
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

Paws::Pinpoint::PublicEndpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::PublicEndpoint object:

  $service_obj->Method(Att1 => { Address => $value, ..., User => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::PublicEndpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->Address

=head1 DESCRIPTION

Public endpoint attributes.

=head1 ATTRIBUTES


=head2 Address => Str

  The unique identifier for the recipient. For example, an address could
be a device token, email address, or mobile phone number.


=head2 Attributes => L<Paws::Pinpoint::MapOfListOf__string>

  Custom attributes that your app reports to Amazon Pinpoint. You can use
these attributes as selection criteria when you create a segment.


=head2 ChannelType => Str

  The channel type. Valid values: APNS, GCM


=head2 Demographic => L<Paws::Pinpoint::EndpointDemographic>

  The endpoint demographic attributes.


=head2 EffectiveDate => Str

  The date and time when the endpoint was last updated, in ISO 8601
format.


=head2 EndpointStatus => Str

  The status of the endpoint. If the update fails, the value is INACTIVE.
If the endpoint is updated successfully, the value is ACTIVE.


=head2 Location => L<Paws::Pinpoint::EndpointLocation>

  The endpoint location attributes.


=head2 Metrics => L<Paws::Pinpoint::MapOf__double>

  Custom metrics that your app reports to Amazon Pinpoint.


=head2 OptOut => Str

  Indicates whether a user has opted out of receiving messages with one
of the following values: ALL - User has opted out of all messages. NONE
- Users has not opted out and receives all messages.


=head2 RequestId => Str

  A unique identifier that is generated each time the endpoint is
updated.


=head2 User => L<Paws::Pinpoint::EndpointUser>

  Custom user-specific attributes that your app reports to Amazon
Pinpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

