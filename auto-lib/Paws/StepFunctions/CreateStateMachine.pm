
package Paws::StepFunctions::CreateStateMachine;
  use Moose;
  has Definition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definition' , required => 1);
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::StepFunctions::LoggingConfiguration', traits => ['NameInRequest'], request_name => 'loggingConfiguration' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::StepFunctions::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TracingConfiguration => (is => 'ro', isa => 'Paws::StepFunctions::TracingConfiguration', traits => ['NameInRequest'], request_name => 'tracingConfiguration' );
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStateMachine');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::CreateStateMachineOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::CreateStateMachine - Arguments for method CreateStateMachine on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStateMachine on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method CreateStateMachine.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStateMachine.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $CreateStateMachineOutput = $states->CreateStateMachine(
      Definition           => 'MyDefinition',
      Name                 => 'MyName',
      RoleArn              => 'MyArn',
      LoggingConfiguration => {
        Destinations => [
          {
            CloudWatchLogsLogGroup => {
              LogGroupArn => 'MyArn',    # min: 1, max: 256
            },    # OPTIONAL
          },
          ...
        ],        # OPTIONAL
        IncludeExecutionData => 1,    # OPTIONAL
        Level => 'ALL',               # values: ALL, ERROR, FATAL, OFF; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],                            # OPTIONAL
      TracingConfiguration => {
        Enabled => 1,               # OPTIONAL
      },    # OPTIONAL
      Type => 'STANDARD',    # OPTIONAL
    );

    # Results:
    my $CreationDate    = $CreateStateMachineOutput->CreationDate;
    my $StateMachineArn = $CreateStateMachineOutput->StateMachineArn;

    # Returns a L<Paws::StepFunctions::CreateStateMachineOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/states/CreateStateMachine>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Definition => Str

The Amazon States Language definition of the state machine. See Amazon
States Language
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html).



=head2 LoggingConfiguration => L<Paws::StepFunctions::LoggingConfiguration>

Defines what execution history events are logged and where they are
logged.

By default, the C<level> is set to C<OFF>. For more information see Log
Levels
(https://docs.aws.amazon.com/step-functions/latest/dg/cloudwatch-log-level.html)
in the AWS Step Functions User Guide.



=head2 B<REQUIRED> Name => Str

The name of the state machine.

A name must I<not> contain:

=over

=item *

white space

=item *

brackets C<E<lt> E<gt> { } [ ]>

=item *

wildcard characters C<? *>

=item *

special characters C<" # % \ ^ | ~ ` $ & , ; : />

=item *

control characters (C<U+0000-001F>, C<U+007F-009F>)

=back

To enable logging with CloudWatch Logs, the name should only contain
0-9, A-Z, a-z, - and _.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role to use for this state
machine.



=head2 Tags => ArrayRef[L<Paws::StepFunctions::Tag>]

Tags to be added when creating a state machine.

An array of key-value pairs. For more information, see Using Cost
Allocation Tags
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
in the I<AWS Billing and Cost Management User Guide>, and Controlling
Access Using IAM Tags
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html).

Tags may only contain Unicode letters, digits, white space, or these
symbols: C<_ . : / = + - @>.



=head2 TracingConfiguration => L<Paws::StepFunctions::TracingConfiguration>

Selects whether AWS X-Ray tracing is enabled.



=head2 Type => Str

Determines whether a Standard or Express state machine is created. The
default is C<STANDARD>. You cannot update the C<type> of a state
machine once it has been created.

Valid values are: C<"STANDARD">, C<"EXPRESS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStateMachine in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

