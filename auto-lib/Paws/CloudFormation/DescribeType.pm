# Generated from callargs_class.tt

package Paws::CloudFormation::DescribeType;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw//;
  has Arn => (is => 'ro', isa => Str, predicate => 1);
  has Type => (is => 'ro', isa => Str, predicate => 1);
  has TypeName => (is => 'ro', isa => Str, predicate => 1);
  has VersionId => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeType');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudFormation::DescribeTypeOutput');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeTypeResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TypeName' => {
                               'type' => 'Str'
                             },
               'VersionId' => {
                                'type' => 'Str'
                              },
               'Type' => {
                           'type' => 'Str'
                         },
               'Arn' => {
                          'type' => 'Str'
                        }
             }
}
;
    return $Params_map;
  }

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
      Arn       => 'MyTypeArn',          # OPTIONAL
      Type      => 'RESOURCE',           # OPTIONAL
      TypeName  => 'MyTypeName',         # OPTIONAL
      VersionId => 'MyTypeVersionId',    # OPTIONAL
    );

    # Results:
    my $Arn              = $DescribeTypeOutput->Arn;
    my $DefaultVersionId = $DescribeTypeOutput->DefaultVersionId;
    my $DeprecatedStatus = $DescribeTypeOutput->DeprecatedStatus;
    my $Description      = $DescribeTypeOutput->Description;
    my $DocumentationUrl = $DescribeTypeOutput->DocumentationUrl;
    my $ExecutionRoleArn = $DescribeTypeOutput->ExecutionRoleArn;
    my $LastUpdated      = $DescribeTypeOutput->LastUpdated;
    my $LoggingConfig    = $DescribeTypeOutput->LoggingConfig;
    my $ProvisioningType = $DescribeTypeOutput->ProvisioningType;
    my $Schema           = $DescribeTypeOutput->Schema;
    my $SourceUrl        = $DescribeTypeOutput->SourceUrl;
    my $TimeCreated      = $DescribeTypeOutput->TimeCreated;
    my $Type             = $DescribeTypeOutput->Type;
    my $TypeName         = $DescribeTypeOutput->TypeName;
    my $Visibility       = $DescribeTypeOutput->Visibility;

    # Returns a L<Paws::CloudFormation::DescribeTypeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DescribeType>

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the type.

Conditional: You must specify C<TypeName> or C<Arn>.



=head2 Type => Str

The kind of type.

Currently the only valid value is C<RESOURCE>.

Valid values are: C<"RESOURCE">

=head2 TypeName => Str

The name of the type.

Conditional: You must specify C<TypeName> or C<Arn>.



=head2 VersionId => Str

The ID of a specific version of the type. The version ID is the value
at the end of the Amazon Resource Name (ARN) assigned to the type
version when it is registered.

If you specify a C<VersionId>, C<DescribeType> returns information
about that specific type version. Otherwise, it returns information
about the default type version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeType in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

