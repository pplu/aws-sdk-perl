
package Paws::Signer::CancelSigningProfile;
  use Moose;
  has ProfileName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profileName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelSigningProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/signing-profiles/{profileName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::CancelSigningProfile - Arguments for method CancelSigningProfile on L<Paws::Signer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelSigningProfile on the
L<AWS Signer|Paws::Signer> service. Use the attributes of this class
as arguments to method CancelSigningProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelSigningProfile.

=head1 SYNOPSIS

    my $signer = Paws->service('Signer');
    $signer->CancelSigningProfile(
      ProfileName => 'MyProfileName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/signer/CancelSigningProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileName => Str

The name of the signing profile to be canceled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelSigningProfile in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

