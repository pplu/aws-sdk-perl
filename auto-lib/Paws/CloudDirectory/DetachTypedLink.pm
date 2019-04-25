
package Paws::CloudDirectory::DetachTypedLink;
  use Moose;
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);
  has TypedLinkSpecifier => (is => 'ro', isa => 'Paws::CloudDirectory::TypedLinkSpecifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachTypedLink');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/typedlink/detach');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::DetachTypedLink - Arguments for method DetachTypedLink on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachTypedLink on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method DetachTypedLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachTypedLink.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    $clouddirectory->DetachTypedLink(
      DirectoryArn       => 'MyArn',
      TypedLinkSpecifier => {
        IdentityAttributeValues => [
          {
            AttributeName => 'MyAttributeName',    # min: 1, max: 230
            Value         => {
              BinaryValue   => 'BlobBinaryAttributeValue',    # OPTIONAL
              BooleanValue  => 1,                             # OPTIONAL
              DatetimeValue => '1970-01-01T01:00:00',         # OPTIONAL
              NumberValue   => 'MyNumberAttributeValue',      # OPTIONAL
              StringValue   => 'MyStringAttributeValue',      # OPTIONAL
            },

          },
          ...
        ],
        SourceObjectReference => {
          Selector => 'MySelectorObjectReference',            # OPTIONAL
        },
        TargetObjectReference => {
          Selector => 'MySelectorObjectReference',            # OPTIONAL
        },
        TypedLinkFacet => {
          SchemaArn     => 'MyArn',
          TypedLinkName => 'MyTypedLinkName',

        },

      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/DetachTypedLink>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) of the directory where you want to
detach the typed link.



=head2 B<REQUIRED> TypedLinkSpecifier => L<Paws::CloudDirectory::TypedLinkSpecifier>

Used to accept a typed link specifier as input.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachTypedLink in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

