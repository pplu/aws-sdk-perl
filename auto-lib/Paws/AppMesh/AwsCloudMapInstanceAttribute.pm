# Generated from default/object.tt
package Paws::AppMesh::AwsCloudMapInstanceAttribute;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw//;
  has Key => (is => 'ro', isa => Str, required => 1);
  has Value => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'type' => 'Str'
                          },
               'Key' => {
                          'type' => 'Str'
                        }
             },
  'IsRequired' => {
                    'Value' => 1,
                    'Key' => 1
                  },
  'NameInRequest' => {
                       'Key' => 'key',
                       'Value' => 'value'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::AwsCloudMapInstanceAttribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::AwsCloudMapInstanceAttribute object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::AwsCloudMapInstanceAttribute object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

An object that represents the AWS Cloud Map attribute information for
your virtual node.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The name of an AWS Cloud Map service instance attribute key. Any AWS
Cloud Map service instance that contains the specified key and value is
returned.


=head2 B<REQUIRED> Value => Str

  The value of an AWS Cloud Map service instance attribute key. Any AWS
Cloud Map service instance that contains the specified key and value is
returned.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

