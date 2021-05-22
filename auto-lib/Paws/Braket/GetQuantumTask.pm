
package Paws::Braket::GetQuantumTask;
  use Moose;
  has QuantumTaskArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'quantumTaskArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQuantumTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/quantum-task/{quantumTaskArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Braket::GetQuantumTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::GetQuantumTask - Arguments for method GetQuantumTask on L<Paws::Braket>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQuantumTask on the
L<Braket|Paws::Braket> service. Use the attributes of this class
as arguments to method GetQuantumTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQuantumTask.

=head1 SYNOPSIS

    my $braket = Paws->service('Braket');
    my $GetQuantumTaskResponse = $braket->GetQuantumTask(
      QuantumTaskArn => 'MyQuantumTaskArn',

    );

    # Results:
    my $CreatedAt         = $GetQuantumTaskResponse->CreatedAt;
    my $DeviceArn         = $GetQuantumTaskResponse->DeviceArn;
    my $DeviceParameters  = $GetQuantumTaskResponse->DeviceParameters;
    my $EndedAt           = $GetQuantumTaskResponse->EndedAt;
    my $FailureReason     = $GetQuantumTaskResponse->FailureReason;
    my $OutputS3Bucket    = $GetQuantumTaskResponse->OutputS3Bucket;
    my $OutputS3Directory = $GetQuantumTaskResponse->OutputS3Directory;
    my $QuantumTaskArn    = $GetQuantumTaskResponse->QuantumTaskArn;
    my $Shots             = $GetQuantumTaskResponse->Shots;
    my $Status            = $GetQuantumTaskResponse->Status;
    my $Tags              = $GetQuantumTaskResponse->Tags;

    # Returns a L<Paws::Braket::GetQuantumTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/braket/GetQuantumTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> QuantumTaskArn => Str

the ARN of the task to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQuantumTask in L<Paws::Braket>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

