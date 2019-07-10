package Paws::AppMesh::AwsCloudMapServiceDiscovery;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::AppMesh::AwsCloudMapInstanceAttribute]', request_name => 'attributes', traits => ['NameInRequest']);
  has NamespaceName => (is => 'ro', isa => 'Str', request_name => 'namespaceName', traits => ['NameInRequest'], required => 1);
  has ServiceName => (is => 'ro', isa => 'Str', request_name => 'serviceName', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::AwsCloudMapServiceDiscovery

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::AwsCloudMapServiceDiscovery object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., ServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::AwsCloudMapServiceDiscovery object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

An object representing the AWS Cloud Map service discovery information
for your virtual node.

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::AppMesh::AwsCloudMapInstanceAttribute>]

  A string map that contains attributes with values that you can use to
filter instances by any custom attribute that you specified when you
registered the instance. Only instances that match all of the specified
key/value pairs will be returned.


=head2 B<REQUIRED> NamespaceName => Str

  The name of the AWS Cloud Map namespace to use.


=head2 B<REQUIRED> ServiceName => Str

  The name of the AWS Cloud Map service to use.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

