
package Paws::XRay::PutEncryptionConfig;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutEncryptionConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/PutEncryptionConfig');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::PutEncryptionConfigResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::PutEncryptionConfig - Arguments for method PutEncryptionConfig on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutEncryptionConfig on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method PutEncryptionConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutEncryptionConfig.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $PutEncryptionConfigResult = $xray->PutEncryptionConfig(
      Type  => 'NONE',
      KeyId => 'MyEncryptionKeyId',    # OPTIONAL
    );

    # Results:
    my $EncryptionConfig = $PutEncryptionConfigResult->EncryptionConfig;

    # Returns a L<Paws::XRay::PutEncryptionConfigResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/PutEncryptionConfig>

=head1 ATTRIBUTES


=head2 KeyId => Str

An AWS KMS customer master key (CMK) in one of the following formats:

=over

=item *

B<Alias> - The name of the key. For example, C<alias/MyKey>.

=item *

B<Key ID> - The KMS key ID of the key. For example,
C<ae4aa6d49-a4d8-9df9-a475-4ff6d7898456>.

=item *

B<ARN> - The full Amazon Resource Name of the key ID or alias. For
example,
C<arn:aws:kms:us-east-2:123456789012:key/ae4aa6d49-a4d8-9df9-a475-4ff6d7898456>.
Use this format to specify a key in a different account.

=back

Omit this key if you set C<Type> to C<NONE>.



=head2 B<REQUIRED> Type => Str

The type of encryption. Set to C<KMS> to use your own key for
encryption. Set to C<NONE> for default encryption.

Valid values are: C<"NONE">, C<"KMS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutEncryptionConfig in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

