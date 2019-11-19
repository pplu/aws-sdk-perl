# Generated from default/object.tt
package Paws::ApplicationAutoScaling::SuspendedState;
  use Moo;
  use Types::Standard qw/Bool/;
  use Paws::ApplicationAutoScaling::Types qw//;
  has DynamicScalingInSuspended => (is => 'ro', isa => Bool);
  has DynamicScalingOutSuspended => (is => 'ro', isa => Bool);
  has ScheduledScalingSuspended => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DynamicScalingInSuspended' => {
                                                'type' => 'Bool'
                                              },
               'ScheduledScalingSuspended' => {
                                                'type' => 'Bool'
                                              },
               'DynamicScalingOutSuspended' => {
                                                 'type' => 'Bool'
                                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::SuspendedState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationAutoScaling::SuspendedState object:

  $service_obj->Method(Att1 => { DynamicScalingInSuspended => $value, ..., ScheduledScalingSuspended => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationAutoScaling::SuspendedState object:

  $result = $service_obj->Method(...);
  $result->Att1->DynamicScalingInSuspended

=head1 DESCRIPTION

Specifies whether the scaling activities for a scalable target are in a
suspended state.

=head1 ATTRIBUTES


=head2 DynamicScalingInSuspended => Bool

  Whether scale in by a target tracking scaling policy or a step scaling
policy is suspended. Set the value to C<true> if you don't want
Application Auto Scaling to remove capacity when a scaling policy is
triggered. The default is C<false>.


=head2 DynamicScalingOutSuspended => Bool

  Whether scale out by a target tracking scaling policy or a step scaling
policy is suspended. Set the value to C<true> if you don't want
Application Auto Scaling to add capacity when a scaling policy is
triggered. The default is C<false>.


=head2 ScheduledScalingSuspended => Bool

  Whether scheduled scaling is suspended. Set the value to C<true> if you
don't want Application Auto Scaling to add or remove capacity by
initiating scheduled actions. The default is C<false>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

