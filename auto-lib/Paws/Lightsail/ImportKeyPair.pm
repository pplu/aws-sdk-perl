
package Paws::Lightsail::ImportKeyPair;
  use Moose;
  has KeyPairName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyPairName' , required => 1);
  has PublicKeyBase64 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'publicKeyBase64' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportKeyPair');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::ImportKeyPairResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::ImportKeyPair - Arguments for method ImportKeyPair on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportKeyPair on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method ImportKeyPair.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportKeyPair.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $ImportKeyPairResult = $lightsail->ImportKeyPair(
      KeyPairName     => 'MyResourceName',
      PublicKeyBase64 => 'MyBase64',

    );

    # Results:
    my $Operation = $ImportKeyPairResult->Operation;

    # Returns a L<Paws::Lightsail::ImportKeyPairResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/ImportKeyPair>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyPairName => Str

The name of the key pair for which you want to import the public key.



=head2 B<REQUIRED> PublicKeyBase64 => Str

A base64-encoded public key of the C<ssh-rsa> type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportKeyPair in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

