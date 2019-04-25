package Paws::MediaLive::InputLocation;
  use Moose;
  has PasswordParam => (is => 'ro', isa => 'Str', request_name => 'passwordParam', traits => ['NameInRequest']);
  has Uri => (is => 'ro', isa => 'Str', request_name => 'uri', traits => ['NameInRequest'], required => 1);
  has Username => (is => 'ro', isa => 'Str', request_name => 'username', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::InputLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::InputLocation object:

  $service_obj->Method(Att1 => { PasswordParam => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::InputLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->PasswordParam

=head1 DESCRIPTION

Placeholder documentation for InputLocation

=head1 ATTRIBUTES


=head2 PasswordParam => Str

  key used to extract the password from EC2 Parameter store


=head2 B<REQUIRED> Uri => Str

  Uniform Resource Identifier - This should be a path to a file
accessible to the Live system (eg. a http:// URI) depending on the
output type. For example, a RTMP destination should have a uri simliar
to: "rtmp://fmsserver/live".


=head2 Username => Str

  Documentation update needed



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

