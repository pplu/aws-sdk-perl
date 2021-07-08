
package Paws::LookoutEquipment::ListDataIngestionJobs;
  use Moose;
  has DatasetName => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataIngestionJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::ListDataIngestionJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListDataIngestionJobs - Arguments for method ListDataIngestionJobs on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataIngestionJobs on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method ListDataIngestionJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataIngestionJobs.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $ListDataIngestionJobsResponse =
      $lookoutequipment->ListDataIngestionJobs(
      DatasetName => 'MyDatasetName',    # OPTIONAL
      MaxResults  => 1,                  # OPTIONAL
      NextToken   => 'MyNextToken',      # OPTIONAL
      Status      => 'IN_PROGRESS',      # OPTIONAL
      );

    # Results:
    my $DataIngestionJobSummaries =
      $ListDataIngestionJobsResponse->DataIngestionJobSummaries;
    my $NextToken = $ListDataIngestionJobsResponse->NextToken;

    # Returns a L<Paws::LookoutEquipment::ListDataIngestionJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/ListDataIngestionJobs>

=head1 ATTRIBUTES


=head2 DatasetName => Str

The name of the dataset being used for the data ingestion job.



=head2 MaxResults => Int

Specifies the maximum number of data ingestion jobs to list.



=head2 NextToken => Str

An opaque pagination token indicating where to continue the listing of
data ingestion jobs.



=head2 Status => Str

Indicates the status of the data ingestion job.

Valid values are: C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataIngestionJobs in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

