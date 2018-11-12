package Paws::DS::RadiusSettings;
  use Moose;
  has AuthenticationProtocol => (is => 'ro', isa => 'Str');
  has DisplayLabel => (is => 'ro', isa => 'Str');
  has RadiusPort => (is => 'ro', isa => 'Int');
  has RadiusRetries => (is => 'ro', isa => 'Int');
  has RadiusServers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RadiusTimeout => (is => 'ro', isa => 'Int');
  has SharedSecret => (is => 'ro', isa => 'Str');
  has UseSameUsername => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::RadiusSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::RadiusSettings object:

  $service_obj->Method(Att1 => { AuthenticationProtocol => $value, ..., UseSameUsername => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::RadiusSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthenticationProtocol

=head1 DESCRIPTION

Contains information about a Remote Authentication Dial In User Service
(RADIUS) server.

=head1 ATTRIBUTES


=head2 AuthenticationProtocol => Str

  The protocol specified for your RADIUS endpoints.


=head2 DisplayLabel => Str

  Not currently used.


=head2 RadiusPort => Int

  The port that your RADIUS server is using for communications. Your
on-premises network must allow inbound traffic over this port from the
AWS Directory Service servers.


=head2 RadiusRetries => Int

  The maximum number of times that communication with the RADIUS server
is attempted.


=head2 RadiusServers => ArrayRef[Str|Undef]

  An array of strings that contains the IP addresses of the RADIUS server
endpoints, or the IP addresses of your RADIUS server load balancer.


=head2 RadiusTimeout => Int

  The amount of time, in seconds, to wait for the RADIUS server to
respond.


=head2 SharedSecret => Str

  Required for enabling RADIUS on the directory.


=head2 UseSameUsername => Bool

  Not currently used.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

