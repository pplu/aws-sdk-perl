
package Paws::CloudDirectory::GetObjectAttributes;
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ConsistencyLevel => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-consistency-level');
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);
  has ObjectReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
  has SchemaFacet => (is => 'ro', isa => 'Paws::CloudDirectory::SchemaFacet', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetObjectAttributes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/object/attributes/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::GetObjectAttributesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::GetObjectAttributes - Arguments for method GetObjectAttributes on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetObjectAttributes on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method GetObjectAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetObjectAttributes.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $GetObjectAttributesResponse = $clouddirectory->GetObjectAttributes(
      AttributeNames => [
        'MyAttributeName', ...    # min: 1, max: 230
      ],
      DirectoryArn    => 'MyArn',
      ObjectReference => {
        Selector => 'MySelectorObjectReference',    # OPTIONAL
      },
      SchemaFacet => {
        FacetName => 'MyFacetName',                 # min: 1, max: 64; OPTIONAL
        SchemaArn => 'MyArn',
      },
      ConsistencyLevel => 'SERIALIZABLE',           # OPTIONAL
    );

    # Results:
    my $Attributes = $GetObjectAttributesResponse->Attributes;

    # Returns a L<Paws::CloudDirectory::GetObjectAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/GetObjectAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeNames => ArrayRef[Str|Undef]

List of attribute names whose values will be retrieved.



=head2 ConsistencyLevel => Str

The consistency level at which to retrieve the attributes on an object.

Valid values are: C<"SERIALIZABLE">, C<"EVENTUAL">

=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) that is associated with the Directory
where the object resides.



=head2 B<REQUIRED> ObjectReference => L<Paws::CloudDirectory::ObjectReference>

Reference that identifies the object whose attributes will be
retrieved.



=head2 B<REQUIRED> SchemaFacet => L<Paws::CloudDirectory::SchemaFacet>

Identifier for the facet whose attributes will be retrieved. See
SchemaFacet for details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetObjectAttributes in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

