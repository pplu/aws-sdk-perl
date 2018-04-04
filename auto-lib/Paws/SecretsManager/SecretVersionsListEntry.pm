package Paws::SecretsManager::SecretVersionsListEntry;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str');
  has LastAccessedDate => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');
  has VersionStages => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::SecretVersionsListEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecretsManager::SecretVersionsListEntry object:

  $service_obj->Method(Att1 => { CreatedDate => $value, ..., VersionStages => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecretsManager::SecretVersionsListEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedDate

=head1 DESCRIPTION

A structure that contains information about one version of a secret.

=head1 ATTRIBUTES


=head2 CreatedDate => Str

  The date and time this version of the secret was created.


=head2 LastAccessedDate => Str

  The date that this version of the secret was last accessed. Note that
the resolution of this field is at the date level and does not include
the time.


=head2 VersionId => Str

  The unique version identifier of this version of the secret.


=head2 VersionStages => ArrayRef[Str|Undef]

  An array of staging labels that are currently associated with this
version of the secret.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

