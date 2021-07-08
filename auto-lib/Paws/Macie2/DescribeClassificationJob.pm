
package Paws::Macie2::DescribeClassificationJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClassificationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::DescribeClassificationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::DescribeClassificationJob - Arguments for method DescribeClassificationJob on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeClassificationJob on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method DescribeClassificationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeClassificationJob.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $DescribeClassificationJobResponse = $macie2->DescribeClassificationJob(
      JobId => 'My__string',

    );

    # Results:
    my $ClientToken = $DescribeClassificationJobResponse->ClientToken;
    my $CreatedAt   = $DescribeClassificationJobResponse->CreatedAt;
    my $CustomDataIdentifierIds =
      $DescribeClassificationJobResponse->CustomDataIdentifierIds;
    my $Description = $DescribeClassificationJobResponse->Description;
    my $InitialRun  = $DescribeClassificationJobResponse->InitialRun;
    my $JobArn      = $DescribeClassificationJobResponse->JobArn;
    my $JobId       = $DescribeClassificationJobResponse->JobId;
    my $JobStatus   = $DescribeClassificationJobResponse->JobStatus;
    my $JobType     = $DescribeClassificationJobResponse->JobType;
    my $LastRunErrorStatus =
      $DescribeClassificationJobResponse->LastRunErrorStatus;
    my $LastRunTime     = $DescribeClassificationJobResponse->LastRunTime;
    my $Name            = $DescribeClassificationJobResponse->Name;
    my $S3JobDefinition = $DescribeClassificationJobResponse->S3JobDefinition;
    my $SamplingPercentage =
      $DescribeClassificationJobResponse->SamplingPercentage;
    my $ScheduleFrequency =
      $DescribeClassificationJobResponse->ScheduleFrequency;
    my $Statistics = $DescribeClassificationJobResponse->Statistics;
    my $Tags       = $DescribeClassificationJobResponse->Tags;
    my $UserPausedDetails =
      $DescribeClassificationJobResponse->UserPausedDetails;

    # Returns a L<Paws::Macie2::DescribeClassificationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/DescribeClassificationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The unique identifier for the classification job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeClassificationJob in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

