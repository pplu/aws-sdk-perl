
package Paws::ApplicationMigration::DescribeJobs;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::ApplicationMigration::DescribeJobsRequestFilters', traits => ['NameInRequest'], request_name => 'filters', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DescribeJobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::DescribeJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::DescribeJobs - Arguments for method DescribeJobs on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeJobs on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method DescribeJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeJobs.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $DescribeJobsResponse = $mgn->DescribeJobs(
      Filters => {
        FromDate => 'MyISO8601DatetimeString',    # min: 19, max: 32; OPTIONAL
        JobIDs   => [
          'MyJobID', ...                          # min: 24, max: 24
        ],    # max: 1000; OPTIONAL
        ToDate => 'MyISO8601DatetimeString',    # min: 19, max: 32; OPTIONAL
      },
      MaxResults => 1,                          # OPTIONAL
      NextToken  => 'MyPaginationToken',        # OPTIONAL
    );

    # Results:
    my $Items     = $DescribeJobsResponse->Items;
    my $NextToken = $DescribeJobsResponse->NextToken;

    # Returns a L<Paws::ApplicationMigration::DescribeJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/DescribeJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Filters => L<Paws::ApplicationMigration::DescribeJobsRequestFilters>

Request to describe Job log filters.



=head2 MaxResults => Int

Request to describe Job log by max results.



=head2 NextToken => Str

Request to describe Job logby next token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeJobs in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

