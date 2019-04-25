
package Paws::Datasync::UpdateTask;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'Paws::Datasync::Options');
  has TaskArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateTask - Arguments for method UpdateTask on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTask on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTask.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateTaskResponse = $datasync->UpdateTask(
      TaskArn => 'MyTaskArn',
      Name    => 'MyTagValue',    # OPTIONAL
      Options => {
        Atime          => 'NONE',    # values: NONE, BEST_EFFORT; OPTIONAL
        BytesPerSecond => 1,         # min: -1; OPTIONAL
        Gid   => 'NONE',    # values: NONE, INT_VALUE, NAME, BOTH; OPTIONAL
        Mtime => 'NONE',    # values: NONE, PRESERVE; OPTIONAL
        PosixPermissions =>
          'NONE',           # values: NONE, BEST_EFFORT, PRESERVE; OPTIONAL
        PreserveDeletedFiles => 'PRESERVE', # values: PRESERVE, REMOVE; OPTIONAL
        PreserveDevices      => 'NONE',     # values: NONE, PRESERVE; OPTIONAL
        Uid => 'NONE',    # values: NONE, INT_VALUE, NAME, BOTH; OPTIONAL
        VerifyMode => 'POINT_IN_TIME_CONSISTENT'
        ,                 # values: POINT_IN_TIME_CONSISTENT, NONE; OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateTask>

=head1 ATTRIBUTES


=head2 Name => Str

The name of the task to update.



=head2 Options => L<Paws::Datasync::Options>





=head2 B<REQUIRED> TaskArn => Str

The Amazon Resource Name (ARN) of the resource name of the task to
update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTask in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

