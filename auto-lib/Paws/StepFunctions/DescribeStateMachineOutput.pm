# Generated from json/callresult_class.tt

package Paws::StepFunctions::DescribeStateMachineOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StepFunctions::Types qw//;
  has CreationDate => (is => 'ro', isa => Str, required => 1);
  has Definition => (is => 'ro', isa => Str, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1);
  has StateMachineArn => (is => 'ro', isa => Str, required => 1);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Definition' => {
                                 'type' => 'Str'
                               },
               'StateMachineArn' => {
                                      'type' => 'Str'
                                    },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'RoleArn' => 1,
                    'StateMachineArn' => 1,
                    'Name' => 1,
                    'CreationDate' => 1,
                    'Definition' => 1
                  },
  'NameInRequest' => {
                       'Status' => 'status',
                       'Name' => 'name',
                       'StateMachineArn' => 'stateMachineArn',
                       'RoleArn' => 'roleArn',
                       'CreationDate' => 'creationDate',
                       'Definition' => 'definition'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeStateMachineOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationDate => Str

The date the state machine is created.


=head2 B<REQUIRED> Definition => Str

The Amazon States Language definition of the state machine. See Amazon
States Language
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html).


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



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role used when creating this
state machine. (The IAM role maintains security by granting Step
Functions access to AWS resources.)


=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) that identifies the state machine.


=head2 Status => Str

The current status of the state machine.

Valid values are: C<"ACTIVE">, C<"DELETING">
=head2 _request_id => Str


=cut

1;