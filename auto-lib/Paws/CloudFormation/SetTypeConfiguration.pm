
package Paws::CloudFormation::SetTypeConfiguration;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Str', required => 1);
  has ConfigurationAlias => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has TypeArn => (is => 'ro', isa => 'Str');
  has TypeName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetTypeConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::SetTypeConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetTypeConfigurationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::SetTypeConfiguration - Arguments for method SetTypeConfiguration on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetTypeConfiguration on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method SetTypeConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetTypeConfiguration.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $SetTypeConfigurationOutput = $cloudformation->SetTypeConfiguration(
      Configuration      => 'MyTypeConfiguration',
      ConfigurationAlias => 'MyTypeConfigurationAlias',    # OPTIONAL
      Type               => 'RESOURCE',                    # OPTIONAL
      TypeArn            => 'MyTypeArn',                   # OPTIONAL
      TypeName           => 'MyTypeName',                  # OPTIONAL
    );

    # Results:
    my $ConfigurationArn = $SetTypeConfigurationOutput->ConfigurationArn;

    # Returns a L<Paws::CloudFormation::SetTypeConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/SetTypeConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => Str

The configuration data for the extension, in this account and region.

The configuration data must be formatted as JSON, and validate against
the schema returned in the C<ConfigurationSchema> response element of
API_DescribeType. For more information, see Defining account-level
configuration data for an extension
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-model.html#resource-type-howto-configuration)
in the I<CloudFormation CLI User Guide>.



=head2 ConfigurationAlias => Str

An alias by which to refer to this extension configuration data.

Conditional: Specifying a configuration alias is required when setting
a configuration for a resource type extension.



=head2 Type => Str

The type of extension.

Conditional: You must specify C<ConfigurationArn>, or C<Type> and
C<TypeName>.

Valid values are: C<"RESOURCE">, C<"MODULE">

=head2 TypeArn => Str

The Amazon Resource Name (ARN) for the extension, in this account and
region.

For public extensions, this will be the ARN assigned when you activate
the type
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html)
in this account and region. For private extensions, this will be the
ARN assigned when you register the type
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html)
in this account and region.

Do not include the extension versions suffix at the end of the ARN. You
can set the configuration for an extension, but not for a specific
extension version.



=head2 TypeName => Str

The name of the extension.

Conditional: You must specify C<ConfigurationArn>, or C<Type> and
C<TypeName>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetTypeConfiguration in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

