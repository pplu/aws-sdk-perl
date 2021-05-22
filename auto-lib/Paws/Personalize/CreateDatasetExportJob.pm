
package Paws::Personalize::CreateDatasetExportJob;
  use Moose;
  has DatasetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetArn' , required => 1);
  has IngestionMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ingestionMode' );
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName' , required => 1);
  has JobOutput => (is => 'ro', isa => 'Paws::Personalize::DatasetExportJobOutput', traits => ['NameInRequest'], request_name => 'jobOutput' , required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDatasetExportJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::CreateDatasetExportJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateDatasetExportJob - Arguments for method CreateDatasetExportJob on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDatasetExportJob on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method CreateDatasetExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDatasetExportJob.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $CreateDatasetExportJobResponse = $personalize->CreateDatasetExportJob(
      DatasetArn => 'MyArn',
      JobName    => 'MyName',
      JobOutput  => {
        S3DataDestination => {
          Path      => 'MyS3Location',    # max: 256
          KmsKeyArn => 'MyKmsKeyArn',     # OPTIONAL
        },

      },
      RoleArn       => 'MyRoleArn',
      IngestionMode => 'BULK',            # OPTIONAL
    );

    # Results:
    my $DatasetExportJobArn =
      $CreateDatasetExportJobResponse->DatasetExportJobArn;

    # Returns a L<Paws::Personalize::CreateDatasetExportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/CreateDatasetExportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset that contains the data to
export.



=head2 IngestionMode => Str

The data to export, based on how you imported the data. You can choose
to export only C<BULK> data that you imported using a dataset import
job, only C<PUT> data that you imported incrementally (using the
console, PutEvents, PutUsers and PutItems operations), or C<ALL> for
both types. The default value is C<PUT>.

Valid values are: C<"BULK">, C<"PUT">, C<"ALL">

=head2 B<REQUIRED> JobName => Str

The name for the dataset export job.



=head2 B<REQUIRED> JobOutput => L<Paws::Personalize::DatasetExportJobOutput>

The path to the Amazon S3 bucket where the job's output is stored.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the AWS Identity and Access
Management service role that has permissions to add data to your output
Amazon S3 bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDatasetExportJob in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

