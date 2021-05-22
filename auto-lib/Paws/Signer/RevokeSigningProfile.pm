
package Paws::Signer::RevokeSigningProfile;
  use Moose;
  has EffectiveTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'effectiveTime', required => 1);
  has ProfileName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profileName', required => 1);
  has ProfileVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileVersion', required => 1);
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeSigningProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/signing-profiles/{profileName}/revoke');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::RevokeSigningProfile - Arguments for method RevokeSigningProfile on L<Paws::Signer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RevokeSigningProfile on the
L<AWS Signer|Paws::Signer> service. Use the attributes of this class
as arguments to method RevokeSigningProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RevokeSigningProfile.

=head1 SYNOPSIS

    my $signer = Paws->service('Signer');
    $signer->RevokeSigningProfile(
      EffectiveTime  => '1970-01-01T01:00:00',
      ProfileName    => 'MyProfileName',
      ProfileVersion => 'MyProfileVersion',
      Reason         => 'MyRevocationReasonString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/signer/RevokeSigningProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EffectiveTime => Str

A timestamp for when revocation of a Signing Profile should become
effective. Signatures generated using the signing profile after this
timestamp are not trusted.



=head2 B<REQUIRED> ProfileName => Str

The name of the signing profile to be revoked.



=head2 B<REQUIRED> ProfileVersion => Str

The version of the signing profile to be revoked.



=head2 B<REQUIRED> Reason => Str

The reason for revoking a signing profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RevokeSigningProfile in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

