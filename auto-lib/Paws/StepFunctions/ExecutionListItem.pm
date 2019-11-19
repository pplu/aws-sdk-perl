# Generated from default/object.tt
package Paws::StepFunctions::ExecutionListItem;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StepFunctions::Types qw//;
  has ExecutionArn => (is => 'ro', isa => Str, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);
  has StartDate => (is => 'ro', isa => Str, required => 1);
  has StateMachineArn => (is => 'ro', isa => Str, required => 1);
  has Status => (is => 'ro', isa => Str, required => 1);
  has StopDate => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExecutionArn' => {
                                   'type' => 'Str'
                                 },
               'Status' => {
                             'type' => 'Str'
                           },
               'StopDate' => {
                               'type' => 'Str'
                             },
               'Name' => {
                           'type' => 'Str'
                         },
               'StateMachineArn' => {
                                      'type' => 'Str'
                                    },
               'StartDate' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'ExecutionArn' => 'executionArn',
                       'StartDate' => 'startDate',
                       'StateMachineArn' => 'stateMachineArn',
                       'Name' => 'name',
                       'StopDate' => 'stopDate'
                     },
  'IsRequired' => {
                    'Status' => 1,
                    'ExecutionArn' => 1,
                    'StartDate' => 1,
                    'StateMachineArn' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::ExecutionListItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::ExecutionListItem object:

  $service_obj->Method(Att1 => { ExecutionArn => $value, ..., StopDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::ExecutionListItem object:

  $result = $service_obj->Method(...);
  $result->Att1->ExecutionArn

=head1 DESCRIPTION

Contains details about an execution.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionArn => Str

  The Amazon Resource Name (ARN) that identifies the execution.


=head2 B<REQUIRED> Name => Str

  The name of the execution.

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



=head2 B<REQUIRED> StartDate => Str

  The date the execution started.


=head2 B<REQUIRED> StateMachineArn => Str

  The Amazon Resource Name (ARN) of the executed state machine.


=head2 B<REQUIRED> Status => Str

  The current status of the execution.


=head2 StopDate => Str

  If the execution already ended, the date the execution stopped.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

