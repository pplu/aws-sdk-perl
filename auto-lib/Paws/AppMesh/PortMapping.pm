# Generated from default/object.tt
package Paws::AppMesh::PortMapping;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::AppMesh::Types qw//;
  has Port => (is => 'ro', isa => Int, required => 1);
  has Protocol => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Protocol' => 'protocol',
                       'Port' => 'port'
                     },
  'IsRequired' => {
                    'Port' => 1,
                    'Protocol' => 1
                  },
  'types' => {
               'Port' => {
                           'type' => 'Int'
                         },
               'Protocol' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::PortMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::PortMapping object:

  $service_obj->Method(Att1 => { Port => $value, ..., Protocol => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::PortMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->Port

=head1 DESCRIPTION

An object that represents a port mapping.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Port => Int

  The port used for the port mapping.


=head2 B<REQUIRED> Protocol => Str

  The protocol used for the port mapping. Specify one protocol.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

