package Paws::EC2::DnsServersOptionsModifyStructure;
  use Moose;
  has CustomDnsServers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Enabled => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DnsServersOptionsModifyStructure

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::DnsServersOptionsModifyStructure object:

  $service_obj->Method(Att1 => { CustomDnsServers => $value, ..., Enabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::DnsServersOptionsModifyStructure object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomDnsServers

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CustomDnsServers => ArrayRef[Str|Undef]

  The IPv4 address range, in CIDR notation, of the DNS servers to be
used. You can specify up to two DNS servers. Ensure that the DNS
servers can be reached by the clients. The specified values overwrite
the existing values.


=head2 Enabled => Bool

  Indicates whether DNS servers should be used. Specify C<False> to
delete the existing DNS servers.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
