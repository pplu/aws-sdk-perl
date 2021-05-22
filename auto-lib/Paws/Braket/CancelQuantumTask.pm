
package Paws::Braket::CancelQuantumTask;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has QuantumTaskArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'quantumTaskArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelQuantumTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/quantum-task/{quantumTaskArn}/cancel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Braket::CancelQuantumTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::CancelQuantumTask - Arguments for method CancelQuantumTask on L<Paws::Braket>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelQuantumTask on the
L<Braket|Paws::Braket> service. Use the attributes of this class
as arguments to method CancelQuantumTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelQuantumTask.

=head1 SYNOPSIS

    my $braket = Paws->service('Braket');
    my $CancelQuantumTaskResponse = $braket->CancelQuantumTask(
      ClientToken    => 'MyString64',
      QuantumTaskArn => 'MyQuantumTaskArn',

    );

    # Results:
    my $CancellationStatus = $CancelQuantumTaskResponse->CancellationStatus;
    my $QuantumTaskArn     = $CancelQuantumTaskResponse->QuantumTaskArn;

    # Returns a L<Paws::Braket::CancelQuantumTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/braket/CancelQuantumTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

The client token associated with the request.



=head2 B<REQUIRED> QuantumTaskArn => Str

The ARN of the task to cancel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelQuantumTask in L<Paws::Braket>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

