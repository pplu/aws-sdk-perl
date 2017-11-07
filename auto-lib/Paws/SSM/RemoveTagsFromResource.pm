
package Paws::SSM::RemoveTagsFromResource;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::RemoveTagsFromResourceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::RemoveTagsFromResource - Arguments for method RemoveTagsFromResource on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTagsFromResource on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method RemoveTagsFromResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTagsFromResource.

As an example:

  $service_obj->RemoveTagsFromResource(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The resource ID for which you want to remove tags.



=head2 B<REQUIRED> ResourceType => Str

The type of resource of which you want to remove a tag.

Valid values are: C<"Document">, C<"ManagedInstance">, C<"MaintenanceWindow">, C<"Parameter">, C<"PatchBaseline">

=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

Tag keys that you want to remove from the specified resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTagsFromResource in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

