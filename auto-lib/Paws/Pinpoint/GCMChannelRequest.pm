# Generated from default/object.tt
package Paws::Pinpoint::GCMChannelRequest;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Pinpoint::Types qw//;
  has ApiKey => (is => 'ro', isa => Str, required => 1);
  has Enabled => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApiKey' => {
                             'type' => 'Str'
                           },
               'Enabled' => {
                              'type' => 'Bool'
                            }
             },
  'IsRequired' => {
                    'ApiKey' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GCMChannelRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::GCMChannelRequest object:

  $service_obj->Method(Att1 => { ApiKey => $value, ..., Enabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::GCMChannelRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->ApiKey

=head1 DESCRIPTION

Specifies the status and settings of the GCM channel for an
application. This channel enables Amazon Pinpoint to send push
notifications through the Firebase Cloud Messaging (FCM), formerly
Google Cloud Messaging (GCM), service.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiKey => Str

  The API key, also referred to as a I<server key>, that you received
from Google to communicate with Google services.


=head2 Enabled => Bool

  Specifies whether to enable the GCM channel for the application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

