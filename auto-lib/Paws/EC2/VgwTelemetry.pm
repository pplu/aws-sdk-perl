package Paws::EC2::VgwTelemetry;
  use Moose;
  has AcceptedRouteCount => (is => 'ro', isa => 'Int', request_name => 'acceptedRouteCount', traits => ['NameInRequest']);
  has LastStatusChange => (is => 'ro', isa => 'Str', request_name => 'lastStatusChange', traits => ['NameInRequest']);
  has OutsideIpAddress => (is => 'ro', isa => 'Str', request_name => 'outsideIpAddress', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VgwTelemetry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VgwTelemetry object:

  $service_obj->Method(Att1 => { AcceptedRouteCount => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VgwTelemetry object:

  $result = $service_obj->Method(...);
  $result->Att1->AcceptedRouteCount

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AcceptedRouteCount => Int

  The number of accepted routes.


=head2 LastStatusChange => Str

  The date and time of the last change in status.


=head2 OutsideIpAddress => Str

  The Internet-routable IP address of the virtual private gateway's
outside interface.


=head2 Status => Str

  The status of the VPN tunnel.


=head2 StatusMessage => Str

  If an error occurs, a description of the error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
