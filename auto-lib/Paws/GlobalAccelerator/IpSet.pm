package Paws::GlobalAccelerator::IpSet;
  use Moose;
  has IpAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has IpFamily => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::IpSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GlobalAccelerator::IpSet object:

  $service_obj->Method(Att1 => { IpAddresses => $value, ..., IpFamily => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GlobalAccelerator::IpSet object:

  $result = $service_obj->Method(...);
  $result->Att1->IpAddresses

=head1 DESCRIPTION

A complex type for the set of IP addresses for an accelerator.

=head1 ATTRIBUTES


=head2 IpAddresses => ArrayRef[Str|Undef]

  The array of IP addresses in the IP address set. An IP address set can
have a maximum of two IP addresses.


=head2 IpFamily => Str

  The types of IP addresses included in this IP set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

