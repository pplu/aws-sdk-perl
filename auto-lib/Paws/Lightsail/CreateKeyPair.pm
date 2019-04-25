
package Paws::Lightsail::CreateKeyPair;
  use Moose;
  has KeyPairName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyPairName' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKeyPair');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateKeyPairResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateKeyPair - Arguments for method CreateKeyPair on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKeyPair on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateKeyPair.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKeyPair.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateKeyPairResult = $lightsail->CreateKeyPair(
      KeyPairName => 'MyResourceName',
      Tags        => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $KeyPair          = $CreateKeyPairResult->KeyPair;
    my $Operation        = $CreateKeyPairResult->Operation;
    my $PrivateKeyBase64 = $CreateKeyPairResult->PrivateKeyBase64;
    my $PublicKeyBase64  = $CreateKeyPairResult->PublicKeyBase64;

    # Returns a L<Paws::Lightsail::CreateKeyPairResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateKeyPair>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyPairName => Str

The name for your new key pair.



=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

The tag keys and optional values to add to the resource during create.

To tag a resource after it has been created, see the C<tag resource>
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKeyPair in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

