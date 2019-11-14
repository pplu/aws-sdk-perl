package Paws::AppMesh::EgressFilter;
  use Moose;
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::EgressFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::EgressFilter object:

  $service_obj->Method(Att1 => { Type => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::EgressFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

An object that represents the egress filter rules for a service mesh.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Type => Str

  The egress filter type. By default, the type is C<DROP_ALL>, which
allows egress only from virtual nodes to other defined resources in the
service mesh (and any traffic to C<*.amazonaws.com> for AWS API calls).
You can set the egress filter type to C<ALLOW_ALL> to allow egress to
any endpoint inside or outside of the service mesh.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

