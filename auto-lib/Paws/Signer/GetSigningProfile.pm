
package Paws::Signer::GetSigningProfile;
  use Moose;
  has ProfileName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profileName', required => 1);
  has ProfileOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'profileOwner');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSigningProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/signing-profiles/{profileName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Signer::GetSigningProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::GetSigningProfile - Arguments for method GetSigningProfile on L<Paws::Signer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSigningProfile on the
L<AWS Signer|Paws::Signer> service. Use the attributes of this class
as arguments to method GetSigningProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSigningProfile.

=head1 SYNOPSIS

    my $signer = Paws->service('Signer');
    my $GetSigningProfileResponse = $signer->GetSigningProfile(
      ProfileName  => 'MyProfileName',
      ProfileOwner => 'MyAccountId',     # OPTIONAL
    );

    # Results:
    my $Arn                 = $GetSigningProfileResponse->Arn;
    my $Overrides           = $GetSigningProfileResponse->Overrides;
    my $PlatformDisplayName = $GetSigningProfileResponse->PlatformDisplayName;
    my $PlatformId          = $GetSigningProfileResponse->PlatformId;
    my $ProfileName         = $GetSigningProfileResponse->ProfileName;
    my $ProfileVersion      = $GetSigningProfileResponse->ProfileVersion;
    my $ProfileVersionArn   = $GetSigningProfileResponse->ProfileVersionArn;
    my $RevocationRecord    = $GetSigningProfileResponse->RevocationRecord;
    my $SignatureValidityPeriod =
      $GetSigningProfileResponse->SignatureValidityPeriod;
    my $SigningMaterial   = $GetSigningProfileResponse->SigningMaterial;
    my $SigningParameters = $GetSigningProfileResponse->SigningParameters;
    my $Status            = $GetSigningProfileResponse->Status;
    my $StatusReason      = $GetSigningProfileResponse->StatusReason;
    my $Tags              = $GetSigningProfileResponse->Tags;

    # Returns a L<Paws::Signer::GetSigningProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/signer/GetSigningProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileName => Str

The name of the target signing profile.



=head2 ProfileOwner => Str

The AWS account ID of the profile owner.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSigningProfile in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

