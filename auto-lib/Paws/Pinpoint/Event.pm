package Paws::Pinpoint::Event;
  use Moose;
  has AppPackageName => (is => 'ro', isa => 'Str');
  has AppTitle => (is => 'ro', isa => 'Str');
  has AppVersionCode => (is => 'ro', isa => 'Str');
  has Attributes => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string');
  has ClientSdkVersion => (is => 'ro', isa => 'Str');
  has EventType => (is => 'ro', isa => 'Str');
  has Metrics => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__double');
  has SdkName => (is => 'ro', isa => 'Str');
  has Session => (is => 'ro', isa => 'Paws::Pinpoint::Session');
  has Timestamp => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::Event

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::Event object:

  $service_obj->Method(Att1 => { AppPackageName => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::Event object:

  $result = $service_obj->Method(...);
  $result->Att1->AppPackageName

=head1 DESCRIPTION

Model for creating or updating events.

=head1 ATTRIBUTES


=head2 AppPackageName => Str

  The package name associated with the app that's recording the event.


=head2 AppTitle => Str

  The title of the app that's recording the event.


=head2 AppVersionCode => Str

  The version number of the app that's recording the event.


=head2 Attributes => L<Paws::Pinpoint::MapOf__string>

  Custom attributes that are associated with the event you're adding or
updating.


=head2 ClientSdkVersion => Str

  The version of the SDK that's running on the client device.


=head2 EventType => Str

  The name of the custom event that you're recording.


=head2 Metrics => L<Paws::Pinpoint::MapOf__double>

  Custom metrics related to the event.


=head2 SdkName => Str

  The name of the SDK that's being used to record the event.


=head2 Session => L<Paws::Pinpoint::Session>

  Information about the session in which the event occurred.


=head2 Timestamp => Str

  The date and time when the event occurred, in ISO 8601 format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

