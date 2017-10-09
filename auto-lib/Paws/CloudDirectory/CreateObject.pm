
package Paws::CloudDirectory::CreateObject;
  use Moose;
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition' , required => 1);
  has LinkName => (is => 'ro', isa => 'Str');
  has ObjectAttributeList => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::AttributeKeyAndValue]');
  has ParentReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference');
  has SchemaFacets => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::SchemaFacet]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/object');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::CreateObjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::CreateObject - Arguments for method CreateObject on Paws::CloudDirectory

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateObject on the 
Amazon CloudDirectory service. Use the attributes of this class
as arguments to method CreateObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateObject.

As an example:

  $service_obj->CreateObject(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) that is associated with the Directory in
which the object will be created. For more information, see arns.



=head2 LinkName => Str

The name of link that is used to attach this object to a parent.



=head2 ObjectAttributeList => ArrayRef[L<Paws::CloudDirectory::AttributeKeyAndValue>]

The attribute map whose attribute ARN contains the key and attribute
value as the map value.



=head2 ParentReference => L<Paws::CloudDirectory::ObjectReference>

If specified, the parent reference to which this object will be
attached.



=head2 B<REQUIRED> SchemaFacets => ArrayRef[L<Paws::CloudDirectory::SchemaFacet>]

A list of schema facets to be associated with the object that contains
C<SchemaArn> and facet name. For more information, see arns.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateObject in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

