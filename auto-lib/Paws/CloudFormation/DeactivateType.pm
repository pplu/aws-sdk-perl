
package Paws::CloudFormation::DeactivateType;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has TypeName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeactivateType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DeactivateTypeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeactivateTypeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DeactivateType - Arguments for method DeactivateType on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeactivateType on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DeactivateType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeactivateType.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DeactivateTypeOutput = $cloudformation->DeactivateType(
      Arn      => 'MyPrivateTypeArn',    # OPTIONAL
      Type     => 'RESOURCE',            # OPTIONAL
      TypeName => 'MyTypeName',          # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DeactivateType>

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) for the extension, in this account and
region.

Conditional: You must specify either C<Arn>, or C<TypeName> and
C<Type>.



=head2 Type => Str

The extension type.

Conditional: You must specify either C<Arn>, or C<TypeName> and
C<Type>.

Valid values are: C<"RESOURCE">, C<"MODULE">

=head2 TypeName => Str

The type name of the extension, in this account and region. If you
specified a type name alias when enabling the extension, use the type
name alias.

Conditional: You must specify either C<Arn>, or C<TypeName> and
C<Type>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeactivateType in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

