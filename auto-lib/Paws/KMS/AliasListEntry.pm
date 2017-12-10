package Paws::KMS::AliasListEntry;
  use Moose;
  has AliasArn => (is => 'ro', isa => 'Str');
  has AliasName => (is => 'ro', isa => 'Str');
  has TargetKeyId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::AliasListEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KMS::AliasListEntry object:

  $service_obj->Method(Att1 => { AliasArn => $value, ..., TargetKeyId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KMS::AliasListEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->AliasArn

=head1 DESCRIPTION

Contains information about an alias.

=head1 ATTRIBUTES


=head2 AliasArn => Str

  String that contains the key ARN.


=head2 AliasName => Str

  String that contains the alias.


=head2 TargetKeyId => Str

  String that contains the key identifier referred to by the alias.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

