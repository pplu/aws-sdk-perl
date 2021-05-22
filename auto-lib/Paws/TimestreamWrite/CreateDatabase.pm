
package Paws::TimestreamWrite::CreateDatabase;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamWrite::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDatabase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamWrite::CreateDatabaseResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::CreateDatabase - Arguments for method CreateDatabase on L<Paws::TimestreamWrite>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDatabase on the
L<Amazon Timestream Write|Paws::TimestreamWrite> service. Use the attributes of this class
as arguments to method CreateDatabase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDatabase.

=head1 SYNOPSIS

    my $ingest.timestream = Paws->service('TimestreamWrite');
    my $CreateDatabaseResponse = $ingest . timestream->CreateDatabase(
      DatabaseName => 'MyResourceName',
      KmsKeyId     => 'MyStringValue2048',    # OPTIONAL
      Tags         => [
        {
          Key   => 'MyTagKey',                # min: 1, max: 128
          Value => 'MyTagValue',              # max: 256

        },
        ...
      ],                                      # OPTIONAL
    );

    # Results:
    my $Database = $CreateDatabaseResponse->Database;

    # Returns a L<Paws::TimestreamWrite::CreateDatabaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ingest.timestream/CreateDatabase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatabaseName => Str

The name of the Timestream database.



=head2 KmsKeyId => Str

The KMS key for the database. If the KMS key is not specified, the
database will be encrypted with a Timestream managed KMS key located in
your account. Refer to AWS managed KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
for more info.



=head2 Tags => ArrayRef[L<Paws::TimestreamWrite::Tag>]

A list of key-value pairs to label the table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDatabase in L<Paws::TimestreamWrite>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

