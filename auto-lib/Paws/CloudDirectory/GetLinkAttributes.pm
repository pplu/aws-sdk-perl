
package Paws::CloudDirectory::GetLinkAttributes;
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ConsistencyLevel => (is => 'ro', isa => 'Str');
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);
  has TypedLinkSpecifier => (is => 'ro', isa => 'Paws::CloudDirectory::TypedLinkSpecifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLinkAttributes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/typedlink/attributes/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::GetLinkAttributesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::GetLinkAttributes - Arguments for method GetLinkAttributes on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLinkAttributes on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method GetLinkAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLinkAttributes.

As an example:

  $service_obj->GetLinkAttributes(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/GetLinkAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeNames => ArrayRef[Str|Undef]

A list of attribute names whose values will be retrieved.



=head2 ConsistencyLevel => Str

The consistency level at which to retrieve the attributes on a typed
link.

Valid values are: C<"SERIALIZABLE">, C<"EVENTUAL">

=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) that is associated with the Directory
where the typed link resides. For more information, see arns or Typed
link
(http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).



=head2 B<REQUIRED> TypedLinkSpecifier => L<Paws::CloudDirectory::TypedLinkSpecifier>

Allows a typed link specifier to be accepted as input.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLinkAttributes in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

