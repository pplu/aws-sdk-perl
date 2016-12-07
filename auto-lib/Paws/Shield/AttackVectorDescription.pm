package Paws::Shield::AttackVectorDescription;
  use Moose;
  has VectorType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::AttackVectorDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Shield::AttackVectorDescription object:

  $service_obj->Method(Att1 => { VectorType => $value, ..., VectorType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Shield::AttackVectorDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->VectorType

=head1 DESCRIPTION

Describes the attack.

=head1 ATTRIBUTES


=head2 B<REQUIRED> VectorType => Str

  The attack type, for example, SNMP reflection or SYN flood.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

