
package Paws::WorkMail::GetMobileDeviceAccessEffect;
  use Moose;
  has DeviceModel => (is => 'ro', isa => 'Str');
  has DeviceOperatingSystem => (is => 'ro', isa => 'Str');
  has DeviceType => (is => 'ro', isa => 'Str');
  has DeviceUserAgent => (is => 'ro', isa => 'Str');
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMobileDeviceAccessEffect');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::GetMobileDeviceAccessEffectResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::GetMobileDeviceAccessEffect - Arguments for method GetMobileDeviceAccessEffect on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMobileDeviceAccessEffect on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method GetMobileDeviceAccessEffect.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMobileDeviceAccessEffect.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $GetMobileDeviceAccessEffectResponse =
      $workmail->GetMobileDeviceAccessEffect(
      OrganizationId        => 'MyOrganizationId',
      DeviceModel           => 'MyDeviceModel',              # OPTIONAL
      DeviceOperatingSystem => 'MyDeviceOperatingSystem',    # OPTIONAL
      DeviceType            => 'MyDeviceType',               # OPTIONAL
      DeviceUserAgent       => 'MyDeviceUserAgent',          # OPTIONAL
      );

    # Results:
    my $Effect       = $GetMobileDeviceAccessEffectResponse->Effect;
    my $MatchedRules = $GetMobileDeviceAccessEffectResponse->MatchedRules;

    # Returns a L<Paws::WorkMail::GetMobileDeviceAccessEffectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/GetMobileDeviceAccessEffect>

=head1 ATTRIBUTES


=head2 DeviceModel => Str

Device model the simulated user will report.



=head2 DeviceOperatingSystem => Str

Device operating system the simulated user will report.



=head2 DeviceType => Str

Device type the simulated user will report.



=head2 DeviceUserAgent => Str

Device user agent the simulated user will report.



=head2 B<REQUIRED> OrganizationId => Str

The Amazon WorkMail organization to simulate the access effect for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMobileDeviceAccessEffect in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

