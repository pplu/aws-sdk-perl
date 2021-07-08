
package Paws::HealthLake::StartFHIRImportJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has DatastoreId => (is => 'ro', isa => 'Str', required => 1);
  has InputDataConfig => (is => 'ro', isa => 'Paws::HealthLake::InputDataConfig', required => 1);
  has JobName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartFHIRImportJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::HealthLake::StartFHIRImportJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::StartFHIRImportJob - Arguments for method StartFHIRImportJob on L<Paws::HealthLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartFHIRImportJob on the
L<Amazon HealthLake|Paws::HealthLake> service. Use the attributes of this class
as arguments to method StartFHIRImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartFHIRImportJob.

=head1 SYNOPSIS

    my $healthlake = Paws->service('HealthLake');
    my $StartFHIRImportJobResponse = $healthlake->StartFHIRImportJob(
      ClientToken       => 'MyClientTokenString',
      DataAccessRoleArn => 'MyIamRoleArn',
      DatastoreId       => 'MyDatastoreId',
      InputDataConfig   => {
        S3Uri => 'MyS3Uri',    # max: 1024; OPTIONAL
      },
      JobName => 'MyJobName',    # OPTIONAL
    );

    # Results:
    my $DatastoreId = $StartFHIRImportJobResponse->DatastoreId;
    my $JobId       = $StartFHIRImportJobResponse->JobId;
    my $JobStatus   = $StartFHIRImportJobResponse->JobStatus;

    # Returns a L<Paws::HealthLake::StartFHIRImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/healthlake/StartFHIRImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

Optional user provided token used for ensuring idempotency.



=head2 B<REQUIRED> DataAccessRoleArn => Str

The Amazon Resource Name (ARN) that gives Amazon HealthLake access
permission.



=head2 B<REQUIRED> DatastoreId => Str

The AWS-generated Data Store ID.



=head2 B<REQUIRED> InputDataConfig => L<Paws::HealthLake::InputDataConfig>

The input properties of the FHIR Import job in the StartFHIRImport job
request.



=head2 JobName => Str

The name of the FHIR Import job in the StartFHIRImport job request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartFHIRImportJob in L<Paws::HealthLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

