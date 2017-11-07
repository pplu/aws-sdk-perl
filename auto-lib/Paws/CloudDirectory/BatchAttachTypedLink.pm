package Paws::CloudDirectory::BatchAttachTypedLink;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::AttributeNameAndValue]', required => 1);
  has SourceObjectReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
  has TargetObjectReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
  has TypedLinkFacet => (is => 'ro', isa => 'Paws::CloudDirectory::TypedLinkSchemaAndFacetName', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchAttachTypedLink

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchAttachTypedLink object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., TypedLinkFacet => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchAttachTypedLink object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

Attaches a typed link to a specified source and target object inside a
BatchRead operation. For more information, see AttachTypedLink and
BatchReadRequest$Operations.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => ArrayRef[L<Paws::CloudDirectory::AttributeNameAndValue>]

  A set of attributes that are associated with the typed link.


=head2 B<REQUIRED> SourceObjectReference => L<Paws::CloudDirectory::ObjectReference>

  Identifies the source object that the typed link will attach to.


=head2 B<REQUIRED> TargetObjectReference => L<Paws::CloudDirectory::ObjectReference>

  Identifies the target object that the typed link will attach to.


=head2 B<REQUIRED> TypedLinkFacet => L<Paws::CloudDirectory::TypedLinkSchemaAndFacetName>

  Identifies the typed link facet that is associated with the typed link.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

