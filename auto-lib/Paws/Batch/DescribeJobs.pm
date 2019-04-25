
package Paws::Batch::DescribeJobs;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'jobs', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/describejobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::DescribeJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::DescribeJobs - Arguments for method DescribeJobs on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeJobs on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method DescribeJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeJobs.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    # To describe a specific job
    # This example describes a job with the specified job ID.
    my $DescribeJobsResponse = $batch->DescribeJobs(
      {
        'Jobs' => ['24fa2d7a-64c4-49d2-8b47-f8da4fbde8e9']
      }
    );

    # Results:
    my $jobs = $DescribeJobsResponse->jobs;

    # Returns a L<Paws::Batch::DescribeJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/DescribeJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Jobs => ArrayRef[Str|Undef]

A space-separated list of up to 100 job IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeJobs in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

