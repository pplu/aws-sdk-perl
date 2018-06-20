
package Paws::KMS::ListKeys;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListKeys');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::ListKeysResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ListKeys - Arguments for method ListKeys on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListKeys on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method ListKeys.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListKeys.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To list customer master keys (CMKs)
    # The following example lists CMKs.
    my $ListKeysResponse = $kms->ListKeys();

    # Results:
    my $Keys      = $ListKeysResponse->Keys;
    my $Truncated = $ListKeysResponse->Truncated;

    # Returns a L<Paws::KMS::ListKeysResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/ListKeys>

=head1 ATTRIBUTES


=head2 Limit => Int

Use this parameter to specify the maximum number of items to return.
When this value is present, AWS KMS does not return more than the
specified number of items, but it might return fewer.

This value is optional. If you include a value, it must be between 1
and 1000, inclusive. If you do not include a value, it defaults to 100.



=head2 Marker => Str

Use this parameter in a subsequent request after you receive a response
with truncated results. Set it to the value of C<NextMarker> from the
truncated response you just received.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListKeys in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

