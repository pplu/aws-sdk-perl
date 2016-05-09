package Paws::KMS::KeyMetadata;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AWSAccountId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has DeletionDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has KeyState => (is => 'ro', isa => 'Str');
  has KeyUsage => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::KeyMetadata

=head1 USAGE

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

=head1 DESCRIPTION

Contains metadata about a customer master key (CMK).

This data type is used as a response element for the CreateKey and
DescribeKey operations.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the key. For examples, see AWS Key
Management Service (AWS KMS) in the Example ARNs section of the I<AWS
General Reference>.


=head2 AWSAccountId => Str

  The twelve-digit account ID of the AWS account that owns the key.


=head2 CreationDate => Str

  The date and time when the key was created.


=head2 DeletionDate => Str

  The date and time after which AWS KMS deletes the customer master key
(CMK). This value is present only when C<KeyState> is
C<PendingDeletion>, otherwise this value is null.


=head2 Description => Str

  The friendly description of the key.


=head2 Enabled => Bool

  Specifies whether the key is enabled. When C<KeyState> is C<Enabled>
this value is true, otherwise it is false.


=head2 B<REQUIRED> KeyId => Str

  The globally unique identifier for the key.


=head2 KeyState => Str

  The state of the customer master key (CMK).

For more information about how key state affects the use of a CMK, see
How Key State Affects the Use of a Customer Master Key in the I<AWS Key
Management Service Developer Guide>.


=head2 KeyUsage => Str

  The cryptographic operations for which you can use the key. Currently
the only allowed value is C<ENCRYPT_DECRYPT>, which means you can use
the key for the Encrypt and Decrypt operations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

