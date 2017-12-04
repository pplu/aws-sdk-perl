package Paws::EC2::Ipv6Range;
  use Moose;
  has CidrIpv6 => (is => 'ro', isa => 'Str', request_name => 'cidrIpv6', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Ipv6Range

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Ipv6Range object:

  $service_obj->Method(Att1 => { CidrIpv6 => $value, ..., Description => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Ipv6Range object:

  $result = $service_obj->Method(...);
  $result->Att1->CidrIpv6

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CidrIpv6 => Str

  The IPv6 CIDR range. You can either specify a CIDR range or a source
security group, not both. To specify a single IPv6 address, use the
/128 prefix length.


=head2 Description => Str

  A description for the security group rule that references this IPv6
address range.

Constraints: Up to 255 characters in length. Allowed characters are
a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=;{}!$*



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
