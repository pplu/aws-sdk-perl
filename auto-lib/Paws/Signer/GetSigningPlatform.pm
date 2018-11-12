
package Paws::Signer::GetSigningPlatform;
  use Moose;
  has PlatformId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'platformId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSigningPlatform');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/signing-platforms/{platformId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Signer::GetSigningPlatformResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::GetSigningPlatform - Arguments for method GetSigningPlatform on L<Paws::Signer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSigningPlatform on the
L<AWS Signer|Paws::Signer> service. Use the attributes of this class
as arguments to method GetSigningPlatform.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSigningPlatform.

=head1 SYNOPSIS

    my $signer = Paws->service('Signer');
    my $GetSigningPlatformResponse = $signer->GetSigningPlatform(
      PlatformId => 'MyPlatformId',

    );

    # Results:
    my $Category    = $GetSigningPlatformResponse->Category;
    my $DisplayName = $GetSigningPlatformResponse->DisplayName;
    my $MaxSizeInMB = $GetSigningPlatformResponse->MaxSizeInMB;
    my $Partner     = $GetSigningPlatformResponse->Partner;
    my $PlatformId  = $GetSigningPlatformResponse->PlatformId;
    my $SigningConfiguration =
      $GetSigningPlatformResponse->SigningConfiguration;
    my $SigningImageFormat = $GetSigningPlatformResponse->SigningImageFormat;
    my $Target             = $GetSigningPlatformResponse->Target;

    # Returns a L<Paws::Signer::GetSigningPlatformResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/signer/GetSigningPlatform>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PlatformId => Str

The ID of the target signing platform.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSigningPlatform in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

