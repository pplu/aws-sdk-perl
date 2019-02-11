package Paws::AutoScaling::AdjustmentType;
  use Moose;
  has AdjustmentType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::AdjustmentType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::AdjustmentType object:

  $service_obj->Method(Att1 => { AdjustmentType => $value, ..., AdjustmentType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::AdjustmentType object:

  $result = $service_obj->Method(...);
  $result->Att1->AdjustmentType

=head1 DESCRIPTION

Describes a policy adjustment type.

For more information, see Dynamic Scaling
(http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scale-based-on-demand.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

=head1 ATTRIBUTES


=head2 AdjustmentType => Str

  The policy adjustment type. The valid values are C<ChangeInCapacity>,
C<ExactCapacity>, and C<PercentChangeInCapacity>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

