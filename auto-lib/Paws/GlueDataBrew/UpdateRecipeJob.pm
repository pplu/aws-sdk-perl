
package Paws::GlueDataBrew::UpdateRecipeJob;
  use Moose;
  has EncryptionKeyArn => (is => 'ro', isa => 'Str');
  has EncryptionMode => (is => 'ro', isa => 'Str');
  has LogSubscription => (is => 'ro', isa => 'Str');
  has MaxCapacity => (is => 'ro', isa => 'Int');
  has MaxRetries => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::Output]', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Timeout => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRecipeJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/recipeJobs/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::UpdateRecipeJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::UpdateRecipeJob - Arguments for method UpdateRecipeJob on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRecipeJob on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method UpdateRecipeJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRecipeJob.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $UpdateRecipeJobResponse = $databrew->UpdateRecipeJob(
      Name    => 'MyJobName',
      Outputs => [
        {
          Location => {
            Bucket => 'MyBucket',    # min: 3, max: 63
            Key    => 'MyKey',       # min: 1, max: 1280; OPTIONAL
          },
          CompressionFormat => 'GZIP'
          , # values: GZIP, LZ4, SNAPPY, BZIP2, DEFLATE, LZO, BROTLI, ZSTD, ZLIB; OPTIONAL
          Format => 'CSV'
          ,  # values: CSV, JSON, PARQUET, GLUEPARQUET, AVRO, ORC, XML; OPTIONAL
          FormatOptions => {
            Csv => {
              Delimiter => 'MyDelimiter',    # min: 1, max: 1; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Overwrite        => 1,    # OPTIONAL
          PartitionColumns => [
            'MyColumnName', ...     # min: 1, max: 255
          ],    # max: 200; OPTIONAL
        },
        ...
      ],
      RoleArn          => 'MyArn',
      EncryptionKeyArn => 'MyEncryptionKeyArn',    # OPTIONAL
      EncryptionMode   => 'SSE-KMS',               # OPTIONAL
      LogSubscription  => 'ENABLE',                # OPTIONAL
      MaxCapacity      => 1,                       # OPTIONAL
      MaxRetries       => 1,                       # OPTIONAL
      Timeout          => 1,                       # OPTIONAL
    );

    # Results:
    my $Name = $UpdateRecipeJobResponse->Name;

    # Returns a L<Paws::GlueDataBrew::UpdateRecipeJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/UpdateRecipeJob>

=head1 ATTRIBUTES


=head2 EncryptionKeyArn => Str

The Amazon Resource Name (ARN) of an encryption key that is used to
protect the job.



=head2 EncryptionMode => Str

The encryption mode for the job, which can be one of the following:

=over

=item *

C<SSE-KMS> - Server-side encryption with keys managed by AWS KMS.

=item *

C<SSE-S3> - Server-side encryption with keys managed by Amazon S3.

=back


Valid values are: C<"SSE-KMS">, C<"SSE-S3">

=head2 LogSubscription => Str

Enables or disables Amazon CloudWatch logging for the job. If logging
is enabled, CloudWatch writes one log stream for each job run.

Valid values are: C<"ENABLE">, C<"DISABLE">

=head2 MaxCapacity => Int

The maximum number of nodes that DataBrew can consume when the job
processes data.



=head2 MaxRetries => Int

The maximum number of times to retry the job after a job run fails.



=head2 B<REQUIRED> Name => Str

The name of the job to update.



=head2 B<REQUIRED> Outputs => ArrayRef[L<Paws::GlueDataBrew::Output>]

One or more artifacts that represent the output from running the job.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the AWS Identity and Access
Management (IAM) role to be assumed when DataBrew runs the job.



=head2 Timeout => Int

The job's timeout in minutes. A job that attempts to run longer than
this timeout period ends with a status of C<TIMEOUT>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRecipeJob in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

