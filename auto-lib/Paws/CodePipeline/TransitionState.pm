package Paws::CodePipeline::TransitionState;
  use Moose;
  has DisabledReason => (is => 'ro', isa => 'Str', request_name => 'disabledReason', traits => ['NameInRequest']);
  has Enabled => (is => 'ro', isa => 'Bool', request_name => 'enabled', traits => ['NameInRequest']);
  has LastChangedAt => (is => 'ro', isa => 'Str', request_name => 'lastChangedAt', traits => ['NameInRequest']);
  has LastChangedBy => (is => 'ro', isa => 'Str', request_name => 'lastChangedBy', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::TransitionState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::TransitionState object:

  $service_obj->Method(Att1 => { DisabledReason => $value, ..., LastChangedBy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::TransitionState object:

  $result = $service_obj->Method(...);
  $result->Att1->DisabledReason

=head1 DESCRIPTION

Represents information about the state of transitions between one stage
and another stage.

=head1 ATTRIBUTES


=head2 DisabledReason => Str

  The user-specified reason why the transition between two stages of a
pipeline was disabled.


=head2 Enabled => Bool

  Whether the transition between stages is enabled (true) or disabled
(false).


=head2 LastChangedAt => Str

  The timestamp when the transition state was last changed.


=head2 LastChangedBy => Str

  The ID of the user who last changed the transition state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

