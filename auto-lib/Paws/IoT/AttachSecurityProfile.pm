
package Paws::IoT::AttachSecurityProfile;
  use Moose;
  has SecurityProfileName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'securityProfileName', required => 1);
  has SecurityProfileTargetArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'securityProfileTargetArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachSecurityProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/security-profiles/{securityProfileName}/targets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::AttachSecurityProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AttachSecurityProfile - Arguments for method AttachSecurityProfile on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachSecurityProfile on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method AttachSecurityProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachSecurityProfile.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $AttachSecurityProfileResponse = $iot->AttachSecurityProfile(
      SecurityProfileName      => 'MySecurityProfileName',
      SecurityProfileTargetArn => 'MySecurityProfileTargetArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/AttachSecurityProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecurityProfileName => Str

The security profile that is attached.



=head2 B<REQUIRED> SecurityProfileTargetArn => Str

The ARN of the target (thing group) to which the security profile is
attached.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachSecurityProfile in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

