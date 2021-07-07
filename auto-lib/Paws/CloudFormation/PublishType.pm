
package Paws::CloudFormation::PublishType;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has PublicVersionNumber => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has TypeName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PublishType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::PublishTypeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PublishTypeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::PublishType - Arguments for method PublishType on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PublishType on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method PublishType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PublishType.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $PublishTypeOutput = $cloudformation->PublishType(
      Arn                 => 'MyPrivateTypeArn',         # OPTIONAL
      PublicVersionNumber => 'MyPublicVersionNumber',    # OPTIONAL
      Type                => 'RESOURCE',                 # OPTIONAL
      TypeName            => 'MyTypeName',               # OPTIONAL
    );

    # Results:
    my $PublicTypeArn = $PublishTypeOutput->PublicTypeArn;

    # Returns a L<Paws::CloudFormation::PublishTypeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/PublishType>

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Number (ARN) of the extension.

Conditional: You must specify C<Arn>, or C<TypeName> and C<Type>.



=head2 PublicVersionNumber => Str

The version number to assign to this version of the extension.

Use the following format, and adhere to semantic versioning when
assigning a version number to your extension:

C<MAJOR.MINOR.PATCH>

For more information, see Semantic Versioning 2.0.0
(https://semver.org/).

If you do not specify a version number, CloudFormation increments the
version number by one minor version release.



=head2 Type => Str

The type of the extension.

Conditional: You must specify C<Arn>, or C<TypeName> and C<Type>.

Valid values are: C<"RESOURCE">, C<"MODULE">

=head2 TypeName => Str

The name of the extension.

Conditional: You must specify C<Arn>, or C<TypeName> and C<Type>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PublishType in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

