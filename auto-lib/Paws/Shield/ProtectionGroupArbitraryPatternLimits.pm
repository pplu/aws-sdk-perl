# Generated by default/object.tt
package Paws::Shield::ProtectionGroupArbitraryPatternLimits;
  use Moose;
  has MaxMembers => (is => 'ro', isa => 'Int', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::ProtectionGroupArbitraryPatternLimits

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Shield::ProtectionGroupArbitraryPatternLimits object:

  $service_obj->Method(Att1 => { MaxMembers => $value, ..., MaxMembers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Shield::ProtectionGroupArbitraryPatternLimits object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxMembers

=head1 DESCRIPTION

Limits settings on protection groups with arbitrary pattern type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxMembers => Int

The maximum number of resources you can specify for a single arbitrary
pattern in a protection group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

