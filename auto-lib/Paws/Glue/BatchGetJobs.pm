
package Paws::Glue::BatchGetJobs;
  use Moose;
  has JobNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::BatchGetJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetJobs - Arguments for method BatchGetJobs on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetJobs on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method BatchGetJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetJobs.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $BatchGetJobsResponse = $glue->BatchGetJobs(
      JobNames => [
        'MyNameString', ...    # min: 1, max: 255
      ],

    );

    # Results:
    my $Jobs         = $BatchGetJobsResponse->Jobs;
    my $JobsNotFound = $BatchGetJobsResponse->JobsNotFound;

    # Returns a L<Paws::Glue::BatchGetJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/BatchGetJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobNames => ArrayRef[Str|Undef]

A list of job names, which might be the names returned from the
C<ListJobs> operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetJobs in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

