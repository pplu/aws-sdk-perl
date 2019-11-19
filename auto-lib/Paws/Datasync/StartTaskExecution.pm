# Generated from json/callargs_class.tt

package Paws::Datasync::StartTaskExecution;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Datasync::Types qw/Datasync_FilterRule Datasync_Options/;
  has Includes => (is => 'ro', isa => ArrayRef[Datasync_FilterRule], predicate => 1);
  has OverrideOptions => (is => 'ro', isa => Datasync_Options, predicate => 1);
  has TaskArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StartTaskExecution');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Datasync::StartTaskExecutionResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OverrideOptions' => {
                                      'class' => 'Paws::Datasync::Options',
                                      'type' => 'Datasync_Options'
                                    },
               'Includes' => {
                               'type' => 'ArrayRef[Datasync_FilterRule]',
                               'class' => 'Paws::Datasync::FilterRule'
                             },
               'TaskArn' => {
                              'type' => 'Str'
                            }
             },
  'IsRequired' => {
                    'TaskArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::StartTaskExecution - Arguments for method StartTaskExecution on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTaskExecution on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method StartTaskExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTaskExecution.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $StartTaskExecutionResponse = $datasync->StartTaskExecution(
      TaskArn  => 'MyTaskArn',
      Includes => [
        {
          FilterType =>
            'SIMPLE_PATTERN',    # values: SIMPLE_PATTERNmax: 128; OPTIONAL
          Value => 'MyFilterValue',    # max: 409600; OPTIONAL
        },
        ...
      ],                               # OPTIONAL
      OverrideOptions => {
        Atime          => 'NONE',      # values: NONE, BEST_EFFORT; OPTIONAL
        BytesPerSecond => 1,           # min: -1; OPTIONAL
        Gid   => 'NONE',    # values: NONE, INT_VALUE, NAME, BOTH; OPTIONAL
        Mtime => 'NONE',    # values: NONE, PRESERVE; OPTIONAL
        OverwriteMode => 'ALWAYS',    # values: ALWAYS, NEVER; OPTIONAL
        PosixPermissions =>
          'NONE',    # values: NONE, BEST_EFFORT, PRESERVE; OPTIONAL
        PreserveDeletedFiles => 'PRESERVE', # values: PRESERVE, REMOVE; OPTIONAL
        PreserveDevices      => 'NONE',     # values: NONE, PRESERVE; OPTIONAL
        TaskQueueing => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        Uid => 'NONE',    # values: NONE, INT_VALUE, NAME, BOTH; OPTIONAL
        VerifyMode => 'POINT_IN_TIME_CONSISTENT'
        , # values: POINT_IN_TIME_CONSISTENT, ONLY_FILES_TRANSFERRED, NONE; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $TaskExecutionArn = $StartTaskExecutionResponse->TaskExecutionArn;

    # Returns a L<Paws::Datasync::StartTaskExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/StartTaskExecution>

=head1 ATTRIBUTES


=head2 Includes => ArrayRef[Datasync_FilterRule]

A list of filter rules that determines which files to include when
running a task. The pattern should contain a single filter string that
consists of the patterns to include. The patterns are delimited by "|"
(that is, a pipe). For example: C<"/folder1|/folder2">



=head2 OverrideOptions => Datasync_Options





=head2 B<REQUIRED> TaskArn => Str

The Amazon Resource Name (ARN) of the task to start.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTaskExecution in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

