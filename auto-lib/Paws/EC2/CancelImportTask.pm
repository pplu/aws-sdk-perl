
package Paws::EC2::CancelImportTask;
  use Moose;
  has CancelReason => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has ImportTaskId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelImportTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CancelImportTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CancelImportTask - Arguments for method CancelImportTask on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelImportTask on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CancelImportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelImportTask.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CancelImportTaskResult = $ec2->CancelImportTask(
      CancelReason => 'MyString',    # OPTIONAL
      DryRun       => 1,             # OPTIONAL
      ImportTaskId => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ImportTaskId  = $CancelImportTaskResult->ImportTaskId;
    my $PreviousState = $CancelImportTaskResult->PreviousState;
    my $State         = $CancelImportTaskResult->State;

    # Returns a L<Paws::EC2::CancelImportTaskResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CancelImportTask>

=head1 ATTRIBUTES


=head2 CancelReason => Str

The reason for canceling the task.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 ImportTaskId => Str

The ID of the import image or import snapshot task to be canceled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelImportTask in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

