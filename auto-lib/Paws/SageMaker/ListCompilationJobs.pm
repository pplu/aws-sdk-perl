
package Paws::SageMaker::ListCompilationJobs;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has LastModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has LastModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has StatusEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCompilationJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListCompilationJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListCompilationJobs - Arguments for method ListCompilationJobs on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCompilationJobs on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListCompilationJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCompilationJobs.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListCompilationJobsResponse = $api . sagemaker->ListCompilationJobs(
      CreationTimeAfter      => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore     => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults             => 1,                        # OPTIONAL
      NameContains           => 'MyNameContains',         # OPTIONAL
      NextToken              => 'MyNextToken',            # OPTIONAL
      SortBy                 => 'Name',                   # OPTIONAL
      SortOrder              => 'Ascending',              # OPTIONAL
      StatusEquals           => 'INPROGRESS',             # OPTIONAL
    );

    # Results:
    my $CompilationJobSummaries =
      $ListCompilationJobsResponse->CompilationJobSummaries;
    my $NextToken = $ListCompilationJobsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListCompilationJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListCompilationJobs>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns the model compilation jobs that were created
after a specified time.



=head2 CreationTimeBefore => Str

A filter that returns the model compilation jobs that were created
before a specified time.



=head2 LastModifiedTimeAfter => Str

A filter that returns the model compilation jobs that were modified
after a specified time.



=head2 LastModifiedTimeBefore => Str

A filter that returns the model compilation jobs that were modified
before a specified time.



=head2 MaxResults => Int

The maximum number of model compilation jobs to return in the response.



=head2 NameContains => Str

A filter that returns the model compilation jobs whose name contains a
specified string.



=head2 NextToken => Str

If the result of the previous C<ListCompilationJobs> request was
truncated, the response includes a C<NextToken>. To retrieve the next
set of model compilation jobs, use the token in the next request.



=head2 SortBy => Str

The field by which to sort results. The default is C<CreationTime>.

Valid values are: C<"Name">, C<"CreationTime">, C<"Status">

=head2 SortOrder => Str

The sort order for results. The default is C<Ascending>.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

A filter that retrieves model compilation jobs with a specific
DescribeCompilationJobResponse$CompilationJobStatus status.

Valid values are: C<"INPROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"STARTING">, C<"STOPPING">, C<"STOPPED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCompilationJobs in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

