
package Paws::EC2::ImportKeyPair;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has KeyName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyName' , required => 1);
  has PublicKeyMaterial => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'publicKeyMaterial' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportKeyPair');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ImportKeyPairResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportKeyPair - Arguments for method ImportKeyPair on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportKeyPair on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ImportKeyPair.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportKeyPair.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ImportKeyPairResult = $ec2->ImportKeyPair(
      KeyName           => 'MyString',
      PublicKeyMaterial => 'BlobBlob',
      DryRun            => 1,            # OPTIONAL
    );

    # Results:
    my $KeyFingerprint = $ImportKeyPairResult->KeyFingerprint;
    my $KeyName        = $ImportKeyPairResult->KeyName;

    # Returns a L<Paws::EC2::ImportKeyPairResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ImportKeyPair>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> KeyName => Str

A unique name for the key pair.



=head2 B<REQUIRED> PublicKeyMaterial => Str

The public key. For API calls, the text must be base64-encoded. For
command line tools, base64 encoding is performed for you.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportKeyPair in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

