# Generated from json/callargs_class.tt

package Paws::StepFunctions::CreateStateMachine;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StepFunctions::Types qw/StepFunctions_Tag/;
  has Definition => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[StepFunctions_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateStateMachine');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::StepFunctions::CreateStateMachineOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'Definition' => {
                                 'type' => 'Str'
                               },
               'Tags' => {
                           'class' => 'Paws::StepFunctions::Tag',
                           'type' => 'ArrayRef[StepFunctions_Tag]'
                         },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'RoleArn' => 'roleArn',
                       'Definition' => 'definition',
                       'Tags' => 'tags',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'RoleArn' => 1,
                    'Definition' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

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
      Definition => 'MyDefinition',
      Name       => 'MyName',
      RoleArn    => 'MyArn',
      Tags       => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],                            # OPTIONAL
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



=head2 B<REQUIRED> Name => Str

The name of the state machine.

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




=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role to use for this state
machine.



=head2 Tags => ArrayRef[StepFunctions_Tag]

Tags to be added when creating a state machine.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStateMachine in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

