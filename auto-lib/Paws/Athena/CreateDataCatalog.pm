
package Paws::Athena::CreateDataCatalog;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::Athena::ParametersMap');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Athena::Tag]');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataCatalog');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::CreateDataCatalogOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::CreateDataCatalog - Arguments for method CreateDataCatalog on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataCatalog on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method CreateDataCatalog.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataCatalog.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $CreateDataCatalogOutput = $athena->CreateDataCatalog(
      Name        => 'MyCatalogNameString',
      Type        => 'LAMBDA',
      Description => 'MyDescriptionString',    # OPTIONAL
      Parameters  => {
        'MyKeyString' =>
          'MyParametersMapValue',    # key: min: 1, max: 255, value: max: 51200
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/CreateDataCatalog>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the data catalog to be created.



=head2 B<REQUIRED> Name => Str

The name of the data catalog to create. The catalog name must be unique
for the AWS account and can use a maximum of 128 alphanumeric,
underscore, at sign, or hyphen characters.



=head2 Parameters => L<Paws::Athena::ParametersMap>

Specifies the Lambda function or functions to use for creating the data
catalog. This is a mapping whose values depend on the catalog type.

=over

=item *

For the C<HIVE> data catalog type, use the following syntax. The
C<metadata-function> parameter is required. C<The sdk-version>
parameter is optional and defaults to the currently supported version.

C<metadata-function=I<lambda_arn>, sdk-version=I<version_number>>

=item *

For the C<LAMBDA> data catalog type, use one of the following sets of
required parameters, but not both.

=over

=item *

If you have one Lambda function that processes metadata and another for
reading the actual data, use the following syntax. Both parameters are
required.

C<metadata-function=I<lambda_arn>, record-function=I<lambda_arn>>

=item *

If you have a composite Lambda function that processes both metadata
and data, use the following syntax to specify your Lambda function.

C<function=I<lambda_arn>>

=back

=back




=head2 Tags => ArrayRef[L<Paws::Athena::Tag>]

A list of comma separated tags to add to the data catalog that is
created.



=head2 B<REQUIRED> Type => Str

The type of data catalog to create: C<LAMBDA> for a federated catalog
or C<HIVE> for an external hive metastore.

Do not use the C<GLUE> type. This refers to the C<AwsDataCatalog> that
already exists in your account, of which you can have only one.
Specifying the C<GLUE> type will result in an C<INVALID_INPUT> error.

Valid values are: C<"LAMBDA">, C<"GLUE">, C<"HIVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataCatalog in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

