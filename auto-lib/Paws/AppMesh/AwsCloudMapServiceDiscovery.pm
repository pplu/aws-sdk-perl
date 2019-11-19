# Generated from default/object.tt
package Paws::AppMesh::AwsCloudMapServiceDiscovery;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::AppMesh::Types qw/AppMesh_AwsCloudMapInstanceAttribute/;
  has Attributes => (is => 'ro', isa => ArrayRef[AppMesh_AwsCloudMapInstanceAttribute]);
  has NamespaceName => (is => 'ro', isa => Str, required => 1);
  has ServiceName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'type' => 'ArrayRef[AppMesh_AwsCloudMapInstanceAttribute]',
                                 'class' => 'Paws::AppMesh::AwsCloudMapInstanceAttribute'
                               },
               'NamespaceName' => {
                                    'type' => 'Str'
                                  },
               'ServiceName' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'NamespaceName' => 1,
                    'ServiceName' => 1
                  },
  'NameInRequest' => {
                       'Attributes' => 'attributes',
                       'NamespaceName' => 'namespaceName',
                       'ServiceName' => 'serviceName'
                     }
}
;
    return $Params_map;
  }


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

An object that represents the AWS Cloud Map service discovery
information for your virtual node.

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[AppMesh_AwsCloudMapInstanceAttribute]

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

