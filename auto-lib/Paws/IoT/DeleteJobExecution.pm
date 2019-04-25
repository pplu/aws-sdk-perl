
package Paws::IoT::DeleteJobExecution;
  use Moose;
  has ExecutionNumber => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'executionNumber', required => 1);
  has Force => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'force');
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteJobExecution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/things/{thingName}/jobs/{jobId}/executionNumber/{executionNumber}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteJobExecution - Arguments for method DeleteJobExecution on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteJobExecution on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteJobExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteJobExecution.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->DeleteJobExecution(
      ExecutionNumber => 1,
      JobId           => 'MyJobId',
      ThingName       => 'MyThingName',
      Force           => 1,               # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteJobExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionNumber => Int

The ID of the job execution to be deleted. The C<executionNumber>
refers to the execution of a particular job on a particular device.

Note that once a job execution is deleted, the C<executionNumber> may
be reused by IoT, so be sure you get and use the correct value here.



=head2 Force => Bool

(Optional) When true, you can delete a job execution which is
"IN_PROGRESS". Otherwise, you can only delete a job execution which is
in a terminal state ("SUCCEEDED", "FAILED", "REJECTED", "REMOVED" or
"CANCELED") or an exception will occur. The default is false.

Deleting a job execution which is "IN_PROGRESS", will cause the device
to be unable to access job information or update the job execution
status. Use caution and ensure that the device is able to recover to a
valid state.



=head2 B<REQUIRED> JobId => Str

The ID of the job whose execution on a particular device will be
deleted.



=head2 B<REQUIRED> ThingName => Str

The name of the thing whose job execution will be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteJobExecution in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

