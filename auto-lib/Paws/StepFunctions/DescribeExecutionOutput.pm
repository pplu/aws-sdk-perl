# Generated from json/callresult_class.tt

package Paws::StepFunctions::DescribeExecutionOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StepFunctions::Types qw//;
  has ExecutionArn => (is => 'ro', isa => Str, required => 1);
  has Input => (is => 'ro', isa => Str, required => 1);
  has Name => (is => 'ro', isa => Str);
  has Output => (is => 'ro', isa => Str);
  has StartDate => (is => 'ro', isa => Str, required => 1);
  has StateMachineArn => (is => 'ro', isa => Str, required => 1);
  has Status => (is => 'ro', isa => Str, required => 1);
  has StopDate => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'StateMachineArn' => {
                                      'type' => 'Str'
                                    },
               'ExecutionArn' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Output' => {
                             'type' => 'Str'
                           },
               'StopDate' => {
                               'type' => 'Str'
                             },
               'Input' => {
                            'type' => 'Str'
                          },
               'Name' => {
                           'type' => 'Str'
                         },
               'StartDate' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'StateMachineArn' => 'stateMachineArn',
                       'ExecutionArn' => 'executionArn',
                       'Output' => 'output',
                       'Input' => 'input',
                       'StopDate' => 'stopDate',
                       'Name' => 'name',
                       'StartDate' => 'startDate'
                     },
  'IsRequired' => {
                    'ExecutionArn' => 1,
                    'Status' => 1,
                    'Input' => 1,
                    'StateMachineArn' => 1,
                    'StartDate' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeExecutionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionArn => Str

The Amazon Resource Name (ARN) that identifies the execution.


=head2 B<REQUIRED> Input => Str

The string that contains the JSON input data of the execution.


=head2 Name => Str

The name of the execution.

A name must I<not> contain:

=over

=item *

whitespace

=item *

brackets C<E<lt> E<gt> { } [ ]>

=item *

wildcard characters C<? *>

=item *

special characters C<" # % \ ^ | ~ ` $ & , ; : />

=item *

control characters (C<U+0000-001F>, C<U+007F-009F>)

=back



=head2 Output => Str

The JSON output data of the execution.

This field is set only if the execution succeeds. If the execution
fails, this field is null.


=head2 B<REQUIRED> StartDate => Str

The date the execution is started.


=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) of the executed stated machine.


=head2 B<REQUIRED> Status => Str

The current status of the execution.

Valid values are: C<"RUNNING">, C<"SUCCEEDED">, C<"FAILED">, C<"TIMED_OUT">, C<"ABORTED">
=head2 StopDate => Str

If the execution has already ended, the date the execution stopped.


=head2 _request_id => Str


=cut

1;