
package Paws::GlueDataBrew::DescribeJobResponse;
  use Moose;
  has CreateDate => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Str');
  has DataCatalogOutputs => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::DataCatalogOutput]');
  has DatasetName => (is => 'ro', isa => 'Str');
  has EncryptionKeyArn => (is => 'ro', isa => 'Str');
  has EncryptionMode => (is => 'ro', isa => 'Str');
  has JobSample => (is => 'ro', isa => 'Paws::GlueDataBrew::JobSample');
  has LastModifiedBy => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has LogSubscription => (is => 'ro', isa => 'Str');
  has MaxCapacity => (is => 'ro', isa => 'Int');
  has MaxRetries => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::Output]');
  has ProjectName => (is => 'ro', isa => 'Str');
  has RecipeReference => (is => 'ro', isa => 'Paws::GlueDataBrew::RecipeReference');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::GlueDataBrew::TagMap');
  has Timeout => (is => 'ro', isa => 'Int');
  has Type => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::DescribeJobResponse

=head1 ATTRIBUTES


=head2 CreateDate => Str

The date and time that the job was created.


=head2 CreatedBy => Str

The identifier (user name) of the user associated with the creation of
the job.


=head2 DataCatalogOutputs => ArrayRef[L<Paws::GlueDataBrew::DataCatalogOutput>]

One or more artifacts that represent the AWS Glue Data Catalog output
from running the job.


=head2 DatasetName => Str

The dataset that the job acts upon.


=head2 EncryptionKeyArn => Str

The Amazon Resource Name (ARN) of an encryption key that is used to
protect the job.


=head2 EncryptionMode => Str

The encryption mode for the job, which can be one of the following:

=over

=item *

C<SSE-KMS> - Server-side encryption with keys managed by KMS.

=item *

C<SSE-S3> - Server-side encryption with keys managed by Amazon S3.

=back


Valid values are: C<"SSE-KMS">, C<"SSE-S3">
=head2 JobSample => L<Paws::GlueDataBrew::JobSample>

Sample configuration for profile jobs only. Determines the number of
rows on which the profile job will be executed.


=head2 LastModifiedBy => Str

The identifier (user name) of the user who last modified the job.


=head2 LastModifiedDate => Str

The date and time that the job was last modified.


=head2 LogSubscription => Str

Indicates whether Amazon CloudWatch logging is enabled for this job.

Valid values are: C<"ENABLE">, C<"DISABLE">
=head2 MaxCapacity => Int

The maximum number of compute nodes that DataBrew can consume when the
job processes data.


=head2 MaxRetries => Int

The maximum number of times to retry the job after a job run fails.


=head2 B<REQUIRED> Name => Str

The name of the job.


=head2 Outputs => ArrayRef[L<Paws::GlueDataBrew::Output>]

One or more artifacts that represent the output from running the job.


=head2 ProjectName => Str

The DataBrew project associated with this job.


=head2 RecipeReference => L<Paws::GlueDataBrew::RecipeReference>




=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the job.


=head2 RoleArn => Str

The ARN of the Identity and Access Management (IAM) role to be assumed
when DataBrew runs the job.


=head2 Tags => L<Paws::GlueDataBrew::TagMap>

Metadata tags associated with this job.


=head2 Timeout => Int

The job's timeout in minutes. A job that attempts to run longer than
this timeout period ends with a status of C<TIMEOUT>.


=head2 Type => Str

The job type, which must be one of the following:

=over

=item *

C<PROFILE> - The job analyzes the dataset to determine its size, data
types, data distribution, and more.

=item *

C<RECIPE> - The job applies one or more transformations to a dataset.

=back


Valid values are: C<"PROFILE">, C<"RECIPE">
=head2 _request_id => Str


=cut

