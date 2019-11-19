# Generated from default/object.tt
package Paws::Pinpoint::Event;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_MapOf__string Pinpoint_Session Pinpoint_MapOf__double/;
  has AppPackageName => (is => 'ro', isa => Str);
  has AppTitle => (is => 'ro', isa => Str);
  has AppVersionCode => (is => 'ro', isa => Str);
  has Attributes => (is => 'ro', isa => Pinpoint_MapOf__string);
  has ClientSdkVersion => (is => 'ro', isa => Str);
  has EventType => (is => 'ro', isa => Str, required => 1);
  has Metrics => (is => 'ro', isa => Pinpoint_MapOf__double);
  has SdkName => (is => 'ro', isa => Str);
  has Session => (is => 'ro', isa => Pinpoint_Session);
  has Timestamp => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'type' => 'Pinpoint_MapOf__string',
                                 'class' => 'Paws::Pinpoint::MapOf__string'
                               },
               'ClientSdkVersion' => {
                                       'type' => 'Str'
                                     },
               'Metrics' => {
                              'class' => 'Paws::Pinpoint::MapOf__double',
                              'type' => 'Pinpoint_MapOf__double'
                            },
               'AppTitle' => {
                               'type' => 'Str'
                             },
               'Session' => {
                              'type' => 'Pinpoint_Session',
                              'class' => 'Paws::Pinpoint::Session'
                            },
               'EventType' => {
                                'type' => 'Str'
                              },
               'AppVersionCode' => {
                                     'type' => 'Str'
                                   },
               'Timestamp' => {
                                'type' => 'Str'
                              },
               'AppPackageName' => {
                                     'type' => 'Str'
                                   },
               'SdkName' => {
                              'type' => 'Str'
                            }
             },
  'IsRequired' => {
                    'EventType' => 1,
                    'Timestamp' => 1
                  }
}
;
    return $Params_map;
  }


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

Specifies information about an event that reports data to Amazon
Pinpoint.

=head1 ATTRIBUTES


=head2 AppPackageName => Str

  The package name of the app that's recording the event.


=head2 AppTitle => Str

  The title of the app that's recording the event.


=head2 AppVersionCode => Str

  The version number of the app that's recording the event.


=head2 Attributes => Pinpoint_MapOf__string

  One or more custom attributes that are associated with the event.


=head2 ClientSdkVersion => Str

  The version of the SDK that's running on the client device.


=head2 B<REQUIRED> EventType => Str

  The name of the event.


=head2 Metrics => Pinpoint_MapOf__double

  One or more custom metrics that are associated with the event.


=head2 SdkName => Str

  The name of the SDK that's being used to record the event.


=head2 Session => Pinpoint_Session

  Information about the session in which the event occurred.


=head2 B<REQUIRED> Timestamp => Str

  The date and time, in ISO 8601 format, when the event occurred.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

