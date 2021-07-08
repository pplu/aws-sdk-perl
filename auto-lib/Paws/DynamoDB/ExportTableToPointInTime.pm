
package Paws::DynamoDB::ExportTableToPointInTime;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ExportFormat => (is => 'ro', isa => 'Str');
  has ExportTime => (is => 'ro', isa => 'Str');
  has S3Bucket => (is => 'ro', isa => 'Str', required => 1);
  has S3BucketOwner => (is => 'ro', isa => 'Str');
  has S3Prefix => (is => 'ro', isa => 'Str');
  has S3SseAlgorithm => (is => 'ro', isa => 'Str');
  has S3SseKmsKeyId => (is => 'ro', isa => 'Str');
  has TableArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportTableToPointInTime');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::ExportTableToPointInTimeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ExportTableToPointInTime - Arguments for method ExportTableToPointInTime on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportTableToPointInTime on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method ExportTableToPointInTime.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportTableToPointInTime.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $ExportTableToPointInTimeOutput = $dynamodb->ExportTableToPointInTime(
      S3Bucket       => 'MyS3Bucket',
      TableArn       => 'MyTableArn',
      ClientToken    => 'MyClientToken',          # OPTIONAL
      ExportFormat   => 'DYNAMODB_JSON',          # OPTIONAL
      ExportTime     => '1970-01-01T01:00:00',    # OPTIONAL
      S3BucketOwner  => 'MyS3BucketOwner',        # OPTIONAL
      S3Prefix       => 'MyS3Prefix',             # OPTIONAL
      S3SseAlgorithm => 'AES256',                 # OPTIONAL
      S3SseKmsKeyId  => 'MyS3SseKmsKeyId',        # OPTIONAL
    );

    # Results:
    my $ExportDescription = $ExportTableToPointInTimeOutput->ExportDescription;

    # Returns a L<Paws::DynamoDB::ExportTableToPointInTimeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/ExportTableToPointInTime>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Providing a C<ClientToken> makes the call to
C<ExportTableToPointInTimeInput> idempotent, meaning that multiple
identical calls have the same effect as one single call.

A client token is valid for 8 hours after the first request that uses
it is completed. After 8 hours, any request with the same client token
is treated as a new request. Do not resubmit the same request with the
same client token for more than 8 hours, or the result might not be
idempotent.

If you submit a request with the same client token but a change in
other parameters within the 8-hour idempotency window, DynamoDB returns
an C<IdempotentParameterMismatch> exception.



=head2 ExportFormat => Str

The format for the exported data. Valid values for C<ExportFormat> are
C<DYNAMODB_JSON> or C<ION>.

Valid values are: C<"DYNAMODB_JSON">, C<"ION">

=head2 ExportTime => Str

Time in the past from which to export table data. The table export will
be a snapshot of the table's state at this point in time.



=head2 B<REQUIRED> S3Bucket => Str

The name of the Amazon S3 bucket to export the snapshot to.



=head2 S3BucketOwner => Str

The ID of the AWS account that owns the bucket the export will be
stored in.



=head2 S3Prefix => Str

The Amazon S3 bucket prefix to use as the file name and path of the
exported snapshot.



=head2 S3SseAlgorithm => Str

Type of encryption used on the bucket where export data will be stored.
Valid values for C<S3SseAlgorithm> are:

=over

=item *

C<AES256> - server-side encryption with Amazon S3 managed keys

=item *

C<KMS> - server-side encryption with AWS KMS managed keys

=back


Valid values are: C<"AES256">, C<"KMS">

=head2 S3SseKmsKeyId => Str

The ID of the AWS KMS managed key used to encrypt the S3 bucket where
export data will be stored (if applicable).



=head2 B<REQUIRED> TableArn => Str

The Amazon Resource Name (ARN) associated with the table to export.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportTableToPointInTime in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

