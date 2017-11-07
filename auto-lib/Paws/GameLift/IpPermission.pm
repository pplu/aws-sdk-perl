package Paws::GameLift::IpPermission;
  use Moose;
  has FromPort => (is => 'ro', isa => 'Int', required => 1);
  has IpRange => (is => 'ro', isa => 'Str', required => 1);
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has ToPort => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::IpPermission

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::IpPermission object:

  $service_obj->Method(Att1 => { FromPort => $value, ..., ToPort => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::IpPermission object:

  $result = $service_obj->Method(...);
  $result->Att1->FromPort

=head1 DESCRIPTION

A range of IP addresses and port settings that allow inbound traffic to
connect to server processes on Amazon GameLift. Each game session
hosted on a fleet is assigned a unique combination of IP address and
port number, which must fall into the fleet's allowed ranges. This
combination is included in the GameSession object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FromPort => Int

  Starting value for a range of allowed port numbers.


=head2 B<REQUIRED> IpRange => Str

  Range of allowed IP addresses. This value must be expressed in CIDR
notation. Example: "C<000.000.000.000/[subnet mask]>" or optionally the
shortened version "C<0.0.0.0/[subnet mask]>".


=head2 B<REQUIRED> Protocol => Str

  Network communication protocol used by the fleet.


=head2 B<REQUIRED> ToPort => Int

  Ending value for a range of allowed port numbers. Port numbers are
end-inclusive. This value must be higher than C<FromPort>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

