package Paws::CloudDirectory::BatchGetObjectAttributes;
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ObjectReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
  has SchemaFacet => (is => 'ro', isa => 'Paws::CloudDirectory::SchemaFacet', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchGetObjectAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchGetObjectAttributes object:

  $service_obj->Method(Att1 => { AttributeNames => $value, ..., SchemaFacet => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchGetObjectAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeNames

=head1 DESCRIPTION

Retrieves attributes within a facet that are associated with an object
inside an BatchRead operation. For more information, see
GetObjectAttributes and BatchReadRequest$Operations.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeNames => ArrayRef[Str|Undef]

  List of attribute names whose values will be retrieved.


=head2 B<REQUIRED> ObjectReference => L<Paws::CloudDirectory::ObjectReference>

  Reference that identifies the object whose attributes will be
retrieved.


=head2 B<REQUIRED> SchemaFacet => L<Paws::CloudDirectory::SchemaFacet>

  Identifier for the facet whose attributes will be retrieved. See
SchemaFacet for details.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

