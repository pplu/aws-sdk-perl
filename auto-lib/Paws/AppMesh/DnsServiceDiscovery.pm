package Paws::AppMesh::DnsServiceDiscovery;
  use Moose;
  has Hostname => (is => 'ro', isa => 'Str', request_name => 'hostname', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DnsServiceDiscovery

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::DnsServiceDiscovery object:

  $service_obj->Method(Att1 => { Hostname => $value, ..., Hostname => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::DnsServiceDiscovery object:

  $result = $service_obj->Method(...);
  $result->Att1->Hostname

=head1 DESCRIPTION

An object representing the DNS service discovery information for your
virtual node.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Hostname => Str

  Specifies the DNS service discovery hostname for the virtual node.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

