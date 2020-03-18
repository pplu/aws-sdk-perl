package Paws::Pinpoint::GCMChannelResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has Credential => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool');
  has HasCredential => (is => 'ro', isa => 'Bool');
  has Id => (is => 'ro', isa => 'Str');
  has IsArchived => (is => 'ro', isa => 'Bool');
  has LastModifiedBy => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Platform => (is => 'ro', isa => 'Str', required => 1);
  has Version => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GCMChannelResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::GCMChannelResponse object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::GCMChannelResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Provides information about the status and settings of the GCM channel
for an application. The GCM channel enables Amazon Pinpoint to send
push notifications through the Firebase Cloud Messaging (FCM), formerly
Google Cloud Messaging (GCM), service.

=head1 ATTRIBUTES


=head2 ApplicationId => Str

  The unique identifier for the application that the GCM channel applies
to.


=head2 CreationDate => Str

  The date and time when the GCM channel was enabled.


=head2 B<REQUIRED> Credential => Str

  The Web API Key, also referred to as an I<API_KEY> or I<server key>,
that you received from Google to communicate with Google services.


=head2 Enabled => Bool

  Specifies whether the GCM channel is enabled for the application.


=head2 HasCredential => Bool

  (Not used) This property is retained only for backward compatibility.


=head2 Id => Str

  (Deprecated) An identifier for the GCM channel. This property is
retained only for backward compatibility.


=head2 IsArchived => Bool

  Specifies whether the GCM channel is archived.


=head2 LastModifiedBy => Str

  The user who last modified the GCM channel.


=head2 LastModifiedDate => Str

  The date and time when the GCM channel was last modified.


=head2 B<REQUIRED> Platform => Str

  The type of messaging or notification platform for the channel. For the
GCM channel, this value is GCM.


=head2 Version => Int

  The current version of the GCM channel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

