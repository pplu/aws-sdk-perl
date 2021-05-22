
package Paws::SageMaker::ListAutoMLJobs;
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

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAutoMLJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListAutoMLJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListAutoMLJobs - Arguments for method ListAutoMLJobs on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAutoMLJobs on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListAutoMLJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAutoMLJobs.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListAutoMLJobsResponse = $api . sagemaker->ListAutoMLJobs(
      CreationTimeAfter      => '1970-01-01T01:00:00',     # OPTIONAL
      CreationTimeBefore     => '1970-01-01T01:00:00',     # OPTIONAL
      LastModifiedTimeAfter  => '1970-01-01T01:00:00',     # OPTIONAL
      LastModifiedTimeBefore => '1970-01-01T01:00:00',     # OPTIONAL
      MaxResults             => 1,                         # OPTIONAL
      NameContains           => 'MyAutoMLNameContains',    # OPTIONAL
      NextToken              => 'MyNextToken',             # OPTIONAL
      SortBy                 => 'Name',                    # OPTIONAL
      SortOrder              => 'Ascending',               # OPTIONAL
      StatusEquals           => 'Completed',               # OPTIONAL
    );

    # Results:
    my $AutoMLJobSummaries = $ListAutoMLJobsResponse->AutoMLJobSummaries;
    my $NextToken          = $ListAutoMLJobsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListAutoMLJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListAutoMLJobs>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

Request a list of jobs, using a filter for time.



=head2 CreationTimeBefore => Str

Request a list of jobs, using a filter for time.



=head2 LastModifiedTimeAfter => Str

Request a list of jobs, using a filter for time.



=head2 LastModifiedTimeBefore => Str

Request a list of jobs, using a filter for time.



=head2 MaxResults => Int

Request a list of jobs up to a specified limit.



=head2 NameContains => Str

Request a list of jobs, using a search filter for name.



=head2 NextToken => Str

If the previous response was truncated, you receive this token. Use it
in your next request to receive the next set of results.



=head2 SortBy => Str

The parameter by which to sort the results. The default is C<Name>.

Valid values are: C<"Name">, C<"CreationTime">, C<"Status">

=head2 SortOrder => Str

The sort order for the results. The default is C<Descending>.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

Request a list of jobs, using a filter for status.

Valid values are: C<"Completed">, C<"InProgress">, C<"Failed">, C<"Stopped">, C<"Stopping">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAutoMLJobs in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

