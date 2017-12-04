package Paws::ApplicationAutoScaling::ScalableTargetAction;
  use Moose;
  has MaxCapacity => (is => 'ro', isa => 'Int');
  has MinCapacity => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::ScalableTargetAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationAutoScaling::ScalableTargetAction object:

  $service_obj->Method(Att1 => { MaxCapacity => $value, ..., MinCapacity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationAutoScaling::ScalableTargetAction object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxCapacity

=head1 DESCRIPTION

Represents the minimum and maximum capacity for a scheduled action.

=head1 ATTRIBUTES


=head2 MaxCapacity => Int

  The maximum capacity.


=head2 MinCapacity => Int

  The minimum capacity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

