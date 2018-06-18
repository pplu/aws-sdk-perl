
package Paws::Lightsail::DownloadDefaultKeyPair;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DownloadDefaultKeyPair');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::DownloadDefaultKeyPairResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DownloadDefaultKeyPair - Arguments for method DownloadDefaultKeyPair on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DownloadDefaultKeyPair on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method DownloadDefaultKeyPair.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DownloadDefaultKeyPair.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $DownloadDefaultKeyPairResult = $lightsail->DownloadDefaultKeyPair();

    # Results:
    my $PrivateKeyBase64 = $DownloadDefaultKeyPairResult->PrivateKeyBase64;
    my $PublicKeyBase64  = $DownloadDefaultKeyPairResult->PublicKeyBase64;

    # Returns a L<Paws::Lightsail::DownloadDefaultKeyPairResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/DownloadDefaultKeyPair>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DownloadDefaultKeyPair in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

