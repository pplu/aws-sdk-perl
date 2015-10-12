package Paws::KMS::KeyMetadata;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AWSAccountId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has KeyUsage => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::KeyMetadata

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KMS::KeyMetadata object:

  $service_obj->Method(Att1 => { Arn => $value, ..., KeyUsage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KMS::KeyMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 ATTRIBUTES

=head2 Arn => Str

  Key ARN (Amazon Resource Name).

=head2 AWSAccountId => Str

  Account ID number.

=head2 CreationDate => Str

  Date the key was created.

=head2 Description => Str

  The description of the key.

=head2 Enabled => Bool

  Value that specifies whether the key is enabled.

=head2 B<REQUIRED> KeyId => Str

  Unique identifier for the key.

=head2 KeyUsage => Str

  A value that specifies what operation(s) the key can perform.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

