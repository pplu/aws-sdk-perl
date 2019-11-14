package Paws::AppMesh::ServiceDiscovery;
  use Moose;
  has AwsCloudMap => (is => 'ro', isa => 'Paws::AppMesh::AwsCloudMapServiceDiscovery', request_name => 'awsCloudMap', traits => ['NameInRequest']);
  has Dns => (is => 'ro', isa => 'Paws::AppMesh::DnsServiceDiscovery', request_name => 'dns', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ServiceDiscovery

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::ServiceDiscovery object:

  $service_obj->Method(Att1 => { AwsCloudMap => $value, ..., Dns => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::ServiceDiscovery object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsCloudMap

=head1 DESCRIPTION

An object that represents the service discovery information for a
virtual node.

=head1 ATTRIBUTES


=head2 AwsCloudMap => L<Paws::AppMesh::AwsCloudMapServiceDiscovery>

  Specifies any AWS Cloud Map information for the virtual node.


=head2 Dns => L<Paws::AppMesh::DnsServiceDiscovery>

  Specifies the DNS information for the virtual node.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

