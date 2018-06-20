
package Paws::Glue::BatchStopJobRun;
  use Moose;
  has JobName => (is => 'ro', isa => 'Str', required => 1);
  has JobRunIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchStopJobRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::BatchStopJobRunResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchStopJobRun - Arguments for method BatchStopJobRun on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchStopJobRun on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method BatchStopJobRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchStopJobRun.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $BatchStopJobRunResponse = $glue->BatchStopJobRun(
      JobName   => 'MyNameString',
      JobRunIds => [
        'MyIdString', ...    # min: 1, max: 255
      ],

    );

    # Results:
    my $Errors                = $BatchStopJobRunResponse->Errors;
    my $SuccessfulSubmissions = $BatchStopJobRunResponse->SuccessfulSubmissions;

    # Returns a L<Paws::Glue::BatchStopJobRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/BatchStopJobRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobName => Str

The name of the job definition for which to stop job runs.



=head2 B<REQUIRED> JobRunIds => ArrayRef[Str|Undef]

A list of the JobRunIds that should be stopped for that job definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchStopJobRun in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

