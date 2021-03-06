# Generated by default/object.tt
package Paws::Shield::ProtectionGroupPatternTypeLimits;
  use Moose;
  has ArbitraryPatternLimits => (is => 'ro', isa => 'Paws::Shield::ProtectionGroupArbitraryPatternLimits', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::ProtectionGroupPatternTypeLimits

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Shield::ProtectionGroupPatternTypeLimits object:

  $service_obj->Method(Att1 => { ArbitraryPatternLimits => $value, ..., ArbitraryPatternLimits => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Shield::ProtectionGroupPatternTypeLimits object:

  $result = $service_obj->Method(...);
  $result->Att1->ArbitraryPatternLimits

=head1 DESCRIPTION

Limits settings by pattern type in the protection groups for your
subscription.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArbitraryPatternLimits => L<Paws::Shield::ProtectionGroupArbitraryPatternLimits>

Limits settings on protection groups with arbitrary pattern type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

