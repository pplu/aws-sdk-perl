
package Paws::IoT::CancelJob;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'comment');
  has Force => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'force');
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has ReasonCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reasonCode');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs/{jobId}/cancel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CancelJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CancelJob - Arguments for method CancelJob on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelJob on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CancelJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelJob.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CancelJobResponse = $iot->CancelJob(
      JobId      => 'MyJobId',
      Comment    => 'MyComment',       # OPTIONAL
      Force      => 1,                 # OPTIONAL
      ReasonCode => 'MyReasonCode',    # OPTIONAL
    );

    # Results:
    my $Description = $CancelJobResponse->Description;
    my $JobArn      = $CancelJobResponse->JobArn;
    my $JobId       = $CancelJobResponse->JobId;

    # Returns a L<Paws::IoT::CancelJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CancelJob>

=head1 ATTRIBUTES


=head2 Comment => Str

An optional comment string describing why the job was canceled.



=head2 Force => Bool

(Optional) If C<true> job executions with status "IN_PROGRESS" and
"QUEUED" are canceled, otherwise only job executions with status
"QUEUED" are canceled. The default is C<false>.

Canceling a job which is "IN_PROGRESS", will cause a device which is
executing the job to be unable to update the job execution status. Use
caution and ensure that each device executing a job which is canceled
is able to recover to a valid state.



=head2 B<REQUIRED> JobId => Str

The unique identifier you assigned to this job when it was created.



=head2 ReasonCode => Str

(Optional)A reason code string that explains why the job was canceled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelJob in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

