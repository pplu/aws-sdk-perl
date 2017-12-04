package Paws::EMR::ScalingAction;
  use Moose;
  has Market => (is => 'ro', isa => 'Str');
  has SimpleScalingPolicyConfiguration => (is => 'ro', isa => 'Paws::EMR::SimpleScalingPolicyConfiguration', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ScalingAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::ScalingAction object:

  $service_obj->Method(Att1 => { Market => $value, ..., SimpleScalingPolicyConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::ScalingAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Market

=head1 DESCRIPTION

The type of adjustment the automatic scaling activity makes when
triggered, and the periodicity of the adjustment.

=head1 ATTRIBUTES


=head2 Market => Str

  Not available for instance groups. Instance groups use the market type
specified for the group.


=head2 B<REQUIRED> SimpleScalingPolicyConfiguration => L<Paws::EMR::SimpleScalingPolicyConfiguration>

  The type of adjustment the automatic scaling activity makes when
triggered, and the periodicity of the adjustment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

