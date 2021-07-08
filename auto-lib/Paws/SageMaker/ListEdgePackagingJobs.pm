
package Paws::SageMaker::ListEdgePackagingJobs;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has LastModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has LastModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has ModelNameContains => (is => 'ro', isa => 'Str');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has StatusEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEdgePackagingJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListEdgePackagingJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListEdgePackagingJobs - Arguments for method ListEdgePackagingJobs on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEdgePackagingJobs on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListEdgePackagingJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEdgePackagingJobs.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListEdgePackagingJobsResponse = $api . sagemaker->ListEdgePackagingJobs(
      CreationTimeAfter      => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore     => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults             => 1,                        # OPTIONAL
      ModelNameContains      => 'MyNameContains',         # OPTIONAL
      NameContains           => 'MyNameContains',         # OPTIONAL
      NextToken              => 'MyNextToken',            # OPTIONAL
      SortBy                 => 'NAME',                   # OPTIONAL
      SortOrder              => 'Ascending',              # OPTIONAL
      StatusEquals           => 'STARTING',               # OPTIONAL
    );

    # Results:
    my $EdgePackagingJobSummaries =
      $ListEdgePackagingJobsResponse->EdgePackagingJobSummaries;
    my $NextToken = $ListEdgePackagingJobsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListEdgePackagingJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListEdgePackagingJobs>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

Select jobs where the job was created after specified time.



=head2 CreationTimeBefore => Str

Select jobs where the job was created before specified time.



=head2 LastModifiedTimeAfter => Str

Select jobs where the job was updated after specified time.



=head2 LastModifiedTimeBefore => Str

Select jobs where the job was updated before specified time.



=head2 MaxResults => Int

Maximum number of results to select.



=head2 ModelNameContains => Str

Filter for jobs where the model name contains this string.



=head2 NameContains => Str

Filter for jobs containing this name in their packaging job name.



=head2 NextToken => Str

The response from the last list when returning a list large enough to
need tokening.



=head2 SortBy => Str

Use to specify what column to sort by.

Valid values are: C<"NAME">, C<"MODEL_NAME">, C<"CREATION_TIME">, C<"LAST_MODIFIED_TIME">, C<"STATUS">

=head2 SortOrder => Str

What direction to sort by.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

The job status to filter for.

Valid values are: C<"STARTING">, C<"INPROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"STOPPING">, C<"STOPPED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEdgePackagingJobs in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

