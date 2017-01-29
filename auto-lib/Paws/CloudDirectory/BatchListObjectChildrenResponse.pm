package Paws::CloudDirectory::BatchListObjectChildrenResponse;
  use Moose;
  has Children => (is => 'ro', isa => 'Paws::CloudDirectory::LinkNameToObjectIdentifierMap');
  has NextToken => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchListObjectChildrenResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchListObjectChildrenResponse object:

  $service_obj->Method(Att1 => { Children => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchListObjectChildrenResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Children

=head1 DESCRIPTION

Represents the output of a ListObjectChildren response operation.

=head1 ATTRIBUTES


=head2 Children => L<Paws::CloudDirectory::LinkNameToObjectIdentifierMap>

  Children structure, which is a map with key as the LinkName and
ObjectIdentifier as the value.


=head2 NextToken => Str

  Token used for pagination.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

