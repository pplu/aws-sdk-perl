package Paws::SecretsManager::RotationRulesType;
  use Moose;
  has AutomaticallyAfterDays => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::RotationRulesType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecretsManager::RotationRulesType object:

  $service_obj->Method(Att1 => { AutomaticallyAfterDays => $value, ..., AutomaticallyAfterDays => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecretsManager::RotationRulesType object:

  $result = $service_obj->Method(...);
  $result->Att1->AutomaticallyAfterDays

=head1 DESCRIPTION

A structure that defines the rotation configuration for the secret.

=head1 ATTRIBUTES


=head2 AutomaticallyAfterDays => Int

  Specifies the number of days between automatic scheduled rotations of
the secret.

Secrets Manager schedules the next rotation when the previous one is
complete. Secrets Manager schedules the date by adding the rotation
interval (number of days) to the actual date of the last rotation. The
service chooses the hour within that 24-hour date window randomly. The
minute is also chosen somewhat randomly, but weighted towards the top
of the hour and influenced by a variety of factors that help distribute
load.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

