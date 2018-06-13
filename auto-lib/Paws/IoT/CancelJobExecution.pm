
package Paws::IoT::CancelJobExecution;
  use Moose;
  has ExpectedVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'expectedVersion');
  has Force => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'force');
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has StatusDetails => (is => 'ro', isa => 'Paws::IoT::DetailsMap', traits => ['NameInRequest'], request_name => 'statusDetails');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelJobExecution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/things/{thingName}/jobs/{jobId}/cancel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CancelJobExecution - Arguments for method CancelJobExecution on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelJobExecution on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CancelJobExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelJobExecution.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->CancelJobExecution(
      JobId           => 'MyJobId',
      ThingName       => 'MyThingName',
      ExpectedVersion => 1,               # OPTIONAL
      Force           => 1,               # OPTIONAL
      StatusDetails   => {
        'MyDetailsKey' =>
          'MyDetailsValue',    # key: min: 1, max: 128, value: min: 1, max: 1024
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CancelJobExecution>

=head1 ATTRIBUTES


=head2 ExpectedVersion => Int

(Optional) The expected current version of the job execution. Each time
you update the job execution, its version is incremented. If the
version of the job execution stored in Jobs does not match, the update
is rejected with a VersionMismatch error, and an ErrorResponse that
contains the current job execution status data is returned. (This makes
it unnecessary to perform a separate DescribeJobExecution request in
order to obtain the job execution status data.)



=head2 Force => Bool

(Optional) If C<true> the job execution will be canceled if it has
status IN_PROGRESS or QUEUED, otherwise the job execution will be
canceled only if it has status QUEUED. If you attempt to cancel a job
execution that is IN_PROGRESS, and you do not set C<force> to C<true>,
then an C<InvalidStateTransitionException> will be thrown. The default
is C<false>.

Canceling a job execution which is "IN_PROGRESS", will cause the device
to be unable to update the job execution status. Use caution and ensure
that the device is able to recover to a valid state.



=head2 B<REQUIRED> JobId => Str

The ID of the job to be canceled.



=head2 StatusDetails => L<Paws::IoT::DetailsMap>

A collection of name/value pairs that describe the status of the job
execution. If not specified, the statusDetails are unchanged. You can
specify at most 10 name/value pairs.



=head2 B<REQUIRED> ThingName => Str

The name of the thing whose execution of the job will be canceled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelJobExecution in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

