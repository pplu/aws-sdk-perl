package Paws::DS::ConditionalForwarder;
  use Moose;
  has DnsIpAddrs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RemoteDomainName => (is => 'ro', isa => 'Str');
  has ReplicationScope => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::ConditionalForwarder

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::ConditionalForwarder object:

  $service_obj->Method(Att1 => { DnsIpAddrs => $value, ..., ReplicationScope => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::ConditionalForwarder object:

  $result = $service_obj->Method(...);
  $result->Att1->DnsIpAddrs

=head1 DESCRIPTION

Points to a remote domain with which you are setting up a trust
relationship. Conditional forwarders are required in order to set up a
trust relationship with another domain.

=head1 ATTRIBUTES


=head2 DnsIpAddrs => ArrayRef[Str|Undef]

  The IP addresses of the remote DNS server associated with
RemoteDomainName. This is the IP address of the DNS server that your
conditional forwarder points to.


=head2 RemoteDomainName => Str

  The fully qualified domain name (FQDN) of the remote domains pointed to
by the conditional forwarder.


=head2 ReplicationScope => Str

  The replication scope of the conditional forwarder. The only allowed
value is C<Domain>, which will replicate the conditional forwarder to
all of the domain controllers for your AWS directory.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

