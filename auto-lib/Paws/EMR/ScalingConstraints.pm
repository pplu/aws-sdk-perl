package Paws::EMR::ScalingConstraints;
  use Moose;
  has MaxCapacity => (is => 'ro', isa => 'Int', required => 1);
  has MinCapacity => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ScalingConstraints

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::ScalingConstraints object:

  $service_obj->Method(Att1 => { MaxCapacity => $value, ..., MinCapacity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::ScalingConstraints object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxCapacity

=head1 DESCRIPTION

The upper and lower EC2 instance limits for an automatic scaling
policy. Automatic scaling activities triggered by automatic scaling
rules will not cause an instance group to grow above or below these
limits.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxCapacity => Int

  The upper boundary of EC2 instances in an instance group beyond which
scaling activities are not allowed to grow. Scale-out activities will
not add instances beyond this boundary.


=head2 B<REQUIRED> MinCapacity => Int

  The lower boundary of EC2 instances in an instance group below which
scaling activities are not allowed to shrink. Scale-in activities will
not terminate instances below this boundary.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

