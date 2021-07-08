
package Paws::CloudFormation::TestType;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has LogDeliveryBucket => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has TypeName => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::TestTypeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'TestTypeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::TestType - Arguments for method TestType on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestType on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method TestType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestType.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $TestTypeOutput = $cloudformation->TestType(
      Arn               => 'MyTypeArn',          # OPTIONAL
      LogDeliveryBucket => 'MyS3Bucket',         # OPTIONAL
      Type              => 'RESOURCE',           # OPTIONAL
      TypeName          => 'MyTypeName',         # OPTIONAL
      VersionId         => 'MyTypeVersionId',    # OPTIONAL
    );

    # Results:
    my $TypeVersionArn = $TestTypeOutput->TypeVersionArn;

    # Returns a L<Paws::CloudFormation::TestTypeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/TestType>

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Number (ARN) of the extension.

Conditional: You must specify C<Arn>, or C<TypeName> and C<Type>.



=head2 LogDeliveryBucket => Str

The S3 bucket to which CloudFormation delivers the contract test
execution logs.

CloudFormation delivers the logs by the time contract testing has
completed and the extension has been assigned a test type status of
C<PASSED> or C<FAILED>.

The user calling C<TestType> must be able to access items in the
specified S3 bucket. Specifically, the user needs the following
permissions:

=over

=item *

GetObject

=item *

PutObject

=back

For more information, see Actions, Resources, and Condition Keys for
Amazon S3
(https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html)
in the I<AWS Identity and Access Management User Guide>.



=head2 Type => Str

The type of the extension to test.

Conditional: You must specify C<Arn>, or C<TypeName> and C<Type>.

Valid values are: C<"RESOURCE">, C<"MODULE">

=head2 TypeName => Str

The name of the extension to test.

Conditional: You must specify C<Arn>, or C<TypeName> and C<Type>.



=head2 VersionId => Str

The version of the extension to test.

You can specify the version id with either C<Arn>, or with C<TypeName>
and C<Type>.

If you do not specify a version, CloudFormation uses the default
version of the extension in this account and region for testing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestType in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

