package Paws::SecurityHub::AwsKmsKeyDetails;
  use Moose;
  has AWSAccountId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Num');
  has KeyId => (is => 'ro', isa => 'Str');
  has KeyManager => (is => 'ro', isa => 'Str');
  has KeyState => (is => 'ro', isa => 'Str');
  has Origin => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsKmsKeyDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsKmsKeyDetails object:

  $service_obj->Method(Att1 => { AWSAccountId => $value, ..., Origin => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsKmsKeyDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AWSAccountId

=head1 DESCRIPTION

Contains metadata about a customer master key (CMK).

=head1 ATTRIBUTES


=head2 AWSAccountId => Str

  The twelve-digit account ID of the AWS account that owns the CMK.


=head2 CreationDate => Num

  The date and time when the CMK was created.


=head2 KeyId => Str

  The globally unique identifier for the CMK.


=head2 KeyManager => Str

  The manager of the CMK. CMKs in your AWS account are either customer
managed or AWS managed.


=head2 KeyState => Str

  The state of the CMK.


=head2 Origin => Str

  The source of the CMK's key material.

When this value is C<AWS_KMS>, AWS KMS created the key material.

When this value is C<EXTERNAL>, the key material was imported from your
existing key management infrastructure or the CMK lacks key material.

When this value is C<AWS_CLOUDHSM>, the key material was created in the
AWS CloudHSM cluster associated with a custom key store.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

