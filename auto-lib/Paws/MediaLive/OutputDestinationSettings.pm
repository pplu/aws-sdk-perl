package Paws::MediaLive::OutputDestinationSettings;
  use Moose;
  has PasswordParam => (is => 'ro', isa => 'Str', request_name => 'passwordParam', traits => ['NameInRequest']);
  has StreamName => (is => 'ro', isa => 'Str', request_name => 'streamName', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest']);
  has Username => (is => 'ro', isa => 'Str', request_name => 'username', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::OutputDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::OutputDestinationSettings object:

  $service_obj->Method(Att1 => { PasswordParam => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::OutputDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->PasswordParam

=head1 DESCRIPTION

Placeholder documentation for OutputDestinationSettings

=head1 ATTRIBUTES


=head2 PasswordParam => Str

  key used to extract the password from EC2 Parameter store


=head2 StreamName => Str

  Stream name for RTMP destinations (URLs of type rtmp://)


=head2 Url => Str

  A URL specifying a destination


=head2 Username => Str

  username for destination



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

