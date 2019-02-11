
package Paws::Robomaker::BatchDescribeSimulationJob;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'jobs', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDescribeSimulationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/batchDescribeSimulationJob');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::BatchDescribeSimulationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::BatchDescribeSimulationJob - Arguments for method BatchDescribeSimulationJob on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDescribeSimulationJob on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method BatchDescribeSimulationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDescribeSimulationJob.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $BatchDescribeSimulationJobResponse =
      $robomaker->BatchDescribeSimulationJob(
      Jobs => [
        'MyArn', ...    # min: 1, max: 1224
      ],

      );

    # Results:
    my $Jobs            = $BatchDescribeSimulationJobResponse->Jobs;
    my $UnprocessedJobs = $BatchDescribeSimulationJobResponse->UnprocessedJobs;

    # Returns a L<Paws::Robomaker::BatchDescribeSimulationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/BatchDescribeSimulationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Jobs => ArrayRef[Str|Undef]

A list of Amazon Resource Names (ARNs) of simulation jobs to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDescribeSimulationJob in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

