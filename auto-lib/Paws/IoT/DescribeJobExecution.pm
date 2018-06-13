
package Paws::IoT::DescribeJobExecution;
  use Moose;
  has ExecutionNumber => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'executionNumber');
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJobExecution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/things/{thingName}/jobs/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeJobExecutionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeJobExecution - Arguments for method DescribeJobExecution on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeJobExecution on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeJobExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeJobExecution.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeJobExecutionResponse = $iot->DescribeJobExecution(
      JobId           => 'MyJobId',
      ThingName       => 'MyThingName',
      ExecutionNumber => 1,               # OPTIONAL
    );

    # Results:
    my $Execution = $DescribeJobExecutionResponse->Execution;

    # Returns a L<Paws::IoT::DescribeJobExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeJobExecution>

=head1 ATTRIBUTES


=head2 ExecutionNumber => Int

A string (consisting of the digits "0" through "9" which is used to
specify a particular job execution on a particular device.



=head2 B<REQUIRED> JobId => Str

The unique identifier you assigned to this job when it was created.



=head2 B<REQUIRED> ThingName => Str

The name of the thing on which the job execution is running.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeJobExecution in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

