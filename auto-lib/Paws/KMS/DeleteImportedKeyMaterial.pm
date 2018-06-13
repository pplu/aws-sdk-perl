
package Paws::KMS::DeleteImportedKeyMaterial;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteImportedKeyMaterial');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::DeleteImportedKeyMaterial - Arguments for method DeleteImportedKeyMaterial on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteImportedKeyMaterial on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method DeleteImportedKeyMaterial.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteImportedKeyMaterial.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To delete imported key material
    # The following example deletes the imported key material from the specified
    # customer master key (CMK).
    $kms->DeleteImportedKeyMaterial(
      {
        'KeyId' => '1234abcd-12ab-34cd-56ef-1234567890ab'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/DeleteImportedKeyMaterial>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyId => Str

The identifier of the CMK whose key material to delete. The CMK's
C<Origin> must be C<EXTERNAL>.

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=back

To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteImportedKeyMaterial in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

