package Paws::EC2::ScheduledInstancesPrivateIpAddressConfig;
  use Moose;
  has Primary => (is => 'ro', isa => 'Bool');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ScheduledInstancesPrivateIpAddressConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ScheduledInstancesPrivateIpAddressConfig object:

  $service_obj->Method(Att1 => { Primary => $value, ..., PrivateIpAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ScheduledInstancesPrivateIpAddressConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Primary

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Primary => Bool

  Indicates whether this is a primary IPv4 address. Otherwise, this is a
secondary IPv4 address.


=head2 PrivateIpAddress => Str

  The IPv4 address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
