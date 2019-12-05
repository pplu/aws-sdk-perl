package Paws::Forecast::DatasetImportJobSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DatasetImportJobArn => (is => 'ro', isa => 'Str');
  has DatasetImportJobName => (is => 'ro', isa => 'Str');
  has DataSource => (is => 'ro', isa => 'Paws::Forecast::DataSource');
  has LastModificationTime => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DatasetImportJobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::DatasetImportJobSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::DatasetImportJobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Provides a summary of the dataset import job properties used in the
ListDatasetImportJobs operation. To get the complete set of properties,
call the DescribeDatasetImportJob operation, and provide the
C<DatasetImportJobArn>.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  When the dataset import job was created.


=head2 DatasetImportJobArn => Str

  The Amazon Resource Name (ARN) of the dataset import job.


=head2 DatasetImportJobName => Str

  The name of the dataset import job.


=head2 DataSource => L<Paws::Forecast::DataSource>

  The location of the training data to import and an AWS Identity and
Access Management (IAM) role that Amazon Forecast can assume to access
the data. The training data must be stored in an Amazon S3 bucket.

If encryption is used, C<DataSource> includes an AWS Key Management
Service (KMS) key.


=head2 LastModificationTime => Str

  The last time that the dataset was modified. The time depends on the
status of the job, as follows:

=over

=item *

C<CREATE_PENDING> - The same time as C<CreationTime>.

=item *

C<CREATE_IN_PROGRESS> - The current timestamp.

=item *

C<ACTIVE> or C<CREATE_FAILED> - When the job finished or failed.

=back



=head2 Message => Str

  If an error occurred, an informational message about the error.


=head2 Status => Str

  The status of the dataset import job. The status is reflected in the
status of the dataset. For example, when the import job status is
C<CREATE_IN_PROGRESS>, the status of the dataset is
C<UPDATE_IN_PROGRESS>. States include:

=over

=item *

C<ACTIVE>

=item *

C<CREATE_PENDING>, C<CREATE_IN_PROGRESS>, C<CREATE_FAILED>

=item *

C<DELETE_PENDING>, C<DELETE_IN_PROGRESS>, C<DELETE_FAILED>

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

