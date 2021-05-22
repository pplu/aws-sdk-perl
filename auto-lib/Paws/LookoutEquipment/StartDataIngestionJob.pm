
package Paws::LookoutEquipment::StartDataIngestionJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has DatasetName => (is => 'ro', isa => 'Str', required => 1);
  has IngestionInputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::IngestionInputConfiguration', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDataIngestionJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::StartDataIngestionJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::StartDataIngestionJob - Arguments for method StartDataIngestionJob on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDataIngestionJob on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method StartDataIngestionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDataIngestionJob.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $StartDataIngestionJobResponse =
      $lookoutequipment->StartDataIngestionJob(
      ClientToken                 => 'MyIdempotenceToken',
      DatasetName                 => 'MyDatasetIdentifier',
      IngestionInputConfiguration => {
        S3InputConfiguration => {
          Bucket => 'MyS3Bucket',    # min: 3, max: 63
          Prefix => 'MyS3Prefix',    # max: 1024; OPTIONAL
        },

      },
      RoleArn => 'MyIamRoleArn',

      );

    # Results:
    my $JobId  = $StartDataIngestionJobResponse->JobId;
    my $Status = $StartDataIngestionJobResponse->Status;

    # Returns a L<Paws::LookoutEquipment::StartDataIngestionJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/StartDataIngestionJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A unique identifier for the request. If you do not set the client
request token, Amazon Lookout for Equipment generates one.



=head2 B<REQUIRED> DatasetName => Str

The name of the dataset being used by the data ingestion job.



=head2 B<REQUIRED> IngestionInputConfiguration => L<Paws::LookoutEquipment::IngestionInputConfiguration>

Specifies information for the input data for the data ingestion job,
including dataset S3 location.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of a role with permission to access the
data source for the data ingestion job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDataIngestionJob in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

