
package Paws::CloudFormation::DescribeType;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has PublicVersionNumber => (is => 'ro', isa => 'Str');
  has PublisherId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has TypeName => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DescribeTypeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTypeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeType - Arguments for method DescribeType on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeType on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DescribeType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeType.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DescribeTypeOutput = $cloudformation->DescribeType(
      Arn                 => 'MyTypeArn',                # OPTIONAL
      PublicVersionNumber => 'MyPublicVersionNumber',    # OPTIONAL
      PublisherId         => 'MyPublisherId',            # OPTIONAL
      Type                => 'RESOURCE',                 # OPTIONAL
      TypeName            => 'MyTypeName',               # OPTIONAL
      VersionId           => 'MyTypeVersionId',          # OPTIONAL
    );

    # Results:
    my $Arn                    = $DescribeTypeOutput->Arn;
    my $AutoUpdate             = $DescribeTypeOutput->AutoUpdate;
    my $ConfigurationSchema    = $DescribeTypeOutput->ConfigurationSchema;
    my $DefaultVersionId       = $DescribeTypeOutput->DefaultVersionId;
    my $DeprecatedStatus       = $DescribeTypeOutput->DeprecatedStatus;
    my $Description            = $DescribeTypeOutput->Description;
    my $DocumentationUrl       = $DescribeTypeOutput->DocumentationUrl;
    my $ExecutionRoleArn       = $DescribeTypeOutput->ExecutionRoleArn;
    my $IsActivated            = $DescribeTypeOutput->IsActivated;
    my $IsDefaultVersion       = $DescribeTypeOutput->IsDefaultVersion;
    my $LastUpdated            = $DescribeTypeOutput->LastUpdated;
    my $LatestPublicVersion    = $DescribeTypeOutput->LatestPublicVersion;
    my $LoggingConfig          = $DescribeTypeOutput->LoggingConfig;
    my $OriginalTypeArn        = $DescribeTypeOutput->OriginalTypeArn;
    my $OriginalTypeName       = $DescribeTypeOutput->OriginalTypeName;
    my $ProvisioningType       = $DescribeTypeOutput->ProvisioningType;
    my $PublicVersionNumber    = $DescribeTypeOutput->PublicVersionNumber;
    my $PublisherId            = $DescribeTypeOutput->PublisherId;
    my $RequiredActivatedTypes = $DescribeTypeOutput->RequiredActivatedTypes;
    my $Schema                 = $DescribeTypeOutput->Schema;
    my $SourceUrl              = $DescribeTypeOutput->SourceUrl;
    my $TimeCreated            = $DescribeTypeOutput->TimeCreated;
    my $Type                   = $DescribeTypeOutput->Type;
    my $TypeName               = $DescribeTypeOutput->TypeName;
    my $TypeTestsStatus        = $DescribeTypeOutput->TypeTestsStatus;
    my $TypeTestsStatusDescription =
      $DescribeTypeOutput->TypeTestsStatusDescription;
    my $Visibility = $DescribeTypeOutput->Visibility;

    # Returns a L<Paws::CloudFormation::DescribeTypeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DescribeType>

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the extension.

Conditional: You must specify either C<TypeName> and C<Type>, or
C<Arn>.



=head2 PublicVersionNumber => Str

The version number of a public third-party extension.



=head2 PublisherId => Str

The publisher ID of the extension publisher.

Extensions provided by Amazon are not assigned a publisher ID.



=head2 Type => Str

The kind of extension.

Conditional: You must specify either C<TypeName> and C<Type>, or
C<Arn>.

Valid values are: C<"RESOURCE">, C<"MODULE">

=head2 TypeName => Str

The name of the extension.

Conditional: You must specify either C<TypeName> and C<Type>, or
C<Arn>.



=head2 VersionId => Str

The ID of a specific version of the extension. The version ID is the
value at the end of the Amazon Resource Name (ARN) assigned to the
extension version when it is registered.

If you specify a C<VersionId>, C<DescribeType> returns information
about that specific extension version. Otherwise, it returns
information about the default extension version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeType in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

