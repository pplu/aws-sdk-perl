
package Paws::HealthLake::StartFHIRExportJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has DatastoreId => (is => 'ro', isa => 'Str', required => 1);
  has JobName => (is => 'ro', isa => 'Str');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::HealthLake::OutputDataConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartFHIRExportJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::HealthLake::StartFHIRExportJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::StartFHIRExportJob - Arguments for method StartFHIRExportJob on L<Paws::HealthLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartFHIRExportJob on the
L<Amazon HealthLake|Paws::HealthLake> service. Use the attributes of this class
as arguments to method StartFHIRExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartFHIRExportJob.

=head1 SYNOPSIS

    my $healthlake = Paws->service('HealthLake');
    my $StartFHIRExportJobResponse = $healthlake->StartFHIRExportJob(
      ClientToken       => 'MyClientTokenString',
      DataAccessRoleArn => 'MyIamRoleArn',
      DatastoreId       => 'MyDatastoreId',
      OutputDataConfig  => {
        S3Uri => 'MyS3Uri',    # max: 1024; OPTIONAL
      },
      JobName => 'MyJobName',    # OPTIONAL
    );

    # Results:
    my $DatastoreId = $StartFHIRExportJobResponse->DatastoreId;
    my $JobId       = $StartFHIRExportJobResponse->JobId;
    my $JobStatus   = $StartFHIRExportJobResponse->JobStatus;

    # Returns a L<Paws::HealthLake::StartFHIRExportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/healthlake/StartFHIRExportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

An optional user provided token used for ensuring idempotency.



=head2 B<REQUIRED> DataAccessRoleArn => Str

The Amazon Resource Name used during the initiation of the job.



=head2 B<REQUIRED> DatastoreId => Str

The AWS generated ID for the Data Store from which files are being
exported for an export job.



=head2 JobName => Str

The user generated name for an export job.



=head2 B<REQUIRED> OutputDataConfig => L<Paws::HealthLake::OutputDataConfig>

The output data configuration that was supplied when the export job was
created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartFHIRExportJob in L<Paws::HealthLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

