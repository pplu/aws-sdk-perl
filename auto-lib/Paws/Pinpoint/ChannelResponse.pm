package Paws::Pinpoint::ChannelResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has HasCredential => (is => 'ro', isa => 'Bool');
  has Id => (is => 'ro', isa => 'Str');
  has IsArchived => (is => 'ro', isa => 'Bool');
  has LastModifiedBy => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ChannelResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::ChannelResponse object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::ChannelResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Provides information about the general settings and status of a channel
for an application.

=head1 ATTRIBUTES


=head2 ApplicationId => Str

  The unique identifier for the application.


=head2 CreationDate => Str

  The date and time, in ISO 8601 format, when the channel was enabled.


=head2 Enabled => Bool

  Specifies whether the channel is enabled for the application.


=head2 HasCredential => Bool

  (Not used) This property is retained only for backward compatibility.


=head2 Id => Str

  (Deprecated) An identifier for the channel. This property is retained
only for backward compatibility.


=head2 IsArchived => Bool

  Specifies whether the channel is archived.


=head2 LastModifiedBy => Str

  The user who last modified the channel.


=head2 LastModifiedDate => Str

  The date and time, in ISO 8601 format, when the channel was last
modified.


=head2 Version => Int

  The current version of the channel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

