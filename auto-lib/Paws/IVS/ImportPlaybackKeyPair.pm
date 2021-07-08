
package Paws::IVS::ImportPlaybackKeyPair;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has PublicKeyMaterial => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'publicKeyMaterial', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IVS::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportPlaybackKeyPair');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ImportPlaybackKeyPair');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVS::ImportPlaybackKeyPairResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::ImportPlaybackKeyPair - Arguments for method ImportPlaybackKeyPair on L<Paws::IVS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportPlaybackKeyPair on the
L<Amazon Interactive Video Service|Paws::IVS> service. Use the attributes of this class
as arguments to method ImportPlaybackKeyPair.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportPlaybackKeyPair.

=head1 SYNOPSIS

    my $ivs = Paws->service('IVS');
    my $ImportPlaybackKeyPairResponse = $ivs->ImportPlaybackKeyPair(
      PublicKeyMaterial => 'MyPlaybackPublicKeyMaterial',
      Name              => 'MyPlaybackKeyPairName',         # OPTIONAL
      Tags              => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $KeyPair = $ImportPlaybackKeyPairResponse->KeyPair;

    # Returns a L<Paws::IVS::ImportPlaybackKeyPairResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivs/ImportPlaybackKeyPair>

=head1 ATTRIBUTES


=head2 Name => Str

An arbitrary string (a nickname) assigned to a playback key pair that
helps the customer identify that resource. The value does not need to
be unique.



=head2 B<REQUIRED> PublicKeyMaterial => Str

The public portion of a customer-generated key pair.



=head2 Tags => L<Paws::IVS::Tags>

Any tags provided with the request are added to the playback key pair
tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportPlaybackKeyPair in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

