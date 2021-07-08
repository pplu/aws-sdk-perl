
package Paws::Datasync::UpdateTaskExecution;
  use Moose;
  has Options => (is => 'ro', isa => 'Paws::Datasync::Options', required => 1);
  has TaskExecutionArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTaskExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateTaskExecutionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateTaskExecution - Arguments for method UpdateTaskExecution on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTaskExecution on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateTaskExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTaskExecution.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateTaskExecutionResponse = $datasync->UpdateTaskExecution(
      Options => {
        Atime          => 'NONE',    # values: NONE, BEST_EFFORT; OPTIONAL
        BytesPerSecond => 1,         # min: -1; OPTIONAL
        Gid      => 'NONE',    # values: NONE, INT_VALUE, NAME, BOTH; OPTIONAL
        LogLevel => 'OFF',     # values: OFF, BASIC, TRANSFER; OPTIONAL
        Mtime    => 'NONE',    # values: NONE, PRESERVE; OPTIONAL
        OverwriteMode        => 'ALWAYS',   # values: ALWAYS, NEVER; OPTIONAL
        PosixPermissions     => 'NONE',     # values: NONE, PRESERVE; OPTIONAL
        PreserveDeletedFiles => 'PRESERVE', # values: PRESERVE, REMOVE; OPTIONAL
        PreserveDevices      => 'NONE',     # values: NONE, PRESERVE; OPTIONAL
        SecurityDescriptorCopyFlags =>
          'NONE',    # values: NONE, OWNER_DACL, OWNER_DACL_SACL; OPTIONAL
        TaskQueueing => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        TransferMode => 'CHANGED',    # values: CHANGED, ALL; OPTIONAL
        Uid          => 'NONE',  # values: NONE, INT_VALUE, NAME, BOTH; OPTIONAL
        VerifyMode   => 'POINT_IN_TIME_CONSISTENT'
        , # values: POINT_IN_TIME_CONSISTENT, ONLY_FILES_TRANSFERRED, NONE; OPTIONAL
      },
      TaskExecutionArn => 'MyTaskExecutionArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateTaskExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Options => L<Paws::Datasync::Options>





=head2 B<REQUIRED> TaskExecutionArn => Str

The Amazon Resource Name (ARN) of the specific task execution that is
being updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTaskExecution in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

