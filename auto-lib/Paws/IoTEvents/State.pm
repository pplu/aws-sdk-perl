# Generated from default/object.tt
package Paws::IoTEvents::State;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEvents::Types qw/IoTEvents_OnExitLifecycle IoTEvents_OnEnterLifecycle IoTEvents_OnInputLifecycle/;
  has OnEnter => (is => 'ro', isa => IoTEvents_OnEnterLifecycle);
  has OnExit => (is => 'ro', isa => IoTEvents_OnExitLifecycle);
  has OnInput => (is => 'ro', isa => IoTEvents_OnInputLifecycle);
  has StateName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'StateName' => 1
                  },
  'NameInRequest' => {
                       'OnEnter' => 'onEnter',
                       'StateName' => 'stateName',
                       'OnExit' => 'onExit',
                       'OnInput' => 'onInput'
                     },
  'types' => {
               'OnInput' => {
                              'class' => 'Paws::IoTEvents::OnInputLifecycle',
                              'type' => 'IoTEvents_OnInputLifecycle'
                            },
               'StateName' => {
                                'type' => 'Str'
                              },
               'OnExit' => {
                             'class' => 'Paws::IoTEvents::OnExitLifecycle',
                             'type' => 'IoTEvents_OnExitLifecycle'
                           },
               'OnEnter' => {
                              'type' => 'IoTEvents_OnEnterLifecycle',
                              'class' => 'Paws::IoTEvents::OnEnterLifecycle'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::State

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::State object:

  $service_obj->Method(Att1 => { OnEnter => $value, ..., StateName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::State object:

  $result = $service_obj->Method(...);
  $result->Att1->OnEnter

=head1 DESCRIPTION

Information that defines a state of a detector.

=head1 ATTRIBUTES


=head2 OnEnter => IoTEvents_OnEnterLifecycle

  When entering this state, perform these C<"actions"> if the
C<"condition"> is TRUE.


=head2 OnExit => IoTEvents_OnExitLifecycle

  When exiting this state, perform these C<"actions"> if the specified
C<"condition"> is TRUE.


=head2 OnInput => IoTEvents_OnInputLifecycle

  When an input is received and the C<"condition"> is TRUE, perform the
specified C<"actions">.


=head2 B<REQUIRED> StateName => Str

  The name of the state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

