package Paws::CloudDirectory::BatchListObjectAttributes;
  use Moose;
  has FacetFilter => (is => 'ro', isa => 'Paws::CloudDirectory::SchemaFacet');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ObjectReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchListObjectAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchListObjectAttributes object:

  $service_obj->Method(Att1 => { FacetFilter => $value, ..., ObjectReference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchListObjectAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->FacetFilter

=head1 DESCRIPTION

Represents the output of a ListObjectAttributes operation.

=head1 ATTRIBUTES


=head2 FacetFilter => L<Paws::CloudDirectory::SchemaFacet>

  Used to filter the list of object attributes that are associated with a
certain facet.


=head2 MaxResults => Int

  The maximum number of items to be retrieved in a single call. This is
an approximate number.


=head2 NextToken => Str

  The pagination token.


=head2 B<REQUIRED> ObjectReference => L<Paws::CloudDirectory::ObjectReference>

  Reference of the object whose attributes need to be listed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

