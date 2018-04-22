package Paws::DeviceFarm::ScheduleRunConfiguration;
  use Moose;
  has AuxiliaryApps => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'auxiliaryApps', traits => ['NameInRequest']);
  has BillingMethod => (is => 'ro', isa => 'Str', request_name => 'billingMethod', traits => ['NameInRequest']);
  has CustomerArtifactPaths => (is => 'ro', isa => 'Paws::DeviceFarm::CustomerArtifactPaths', request_name => 'customerArtifactPaths', traits => ['NameInRequest']);
  has ExtraDataPackageArn => (is => 'ro', isa => 'Str', request_name => 'extraDataPackageArn', traits => ['NameInRequest']);
  has Locale => (is => 'ro', isa => 'Str', request_name => 'locale', traits => ['NameInRequest']);
  has Location => (is => 'ro', isa => 'Paws::DeviceFarm::Location', request_name => 'location', traits => ['NameInRequest']);
  has NetworkProfileArn => (is => 'ro', isa => 'Str', request_name => 'networkProfileArn', traits => ['NameInRequest']);
  has Radios => (is => 'ro', isa => 'Paws::DeviceFarm::Radios', request_name => 'radios', traits => ['NameInRequest']);
  has VpceConfigurationArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'vpceConfigurationArns', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ScheduleRunConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::ScheduleRunConfiguration object:

  $service_obj->Method(Att1 => { AuxiliaryApps => $value, ..., VpceConfigurationArns => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::ScheduleRunConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AuxiliaryApps

=head1 DESCRIPTION

Represents the settings for a run. Includes things like location, radio
states, auxiliary apps, and network profiles.

=head1 ATTRIBUTES


=head2 AuxiliaryApps => ArrayRef[Str|Undef]

  A list of auxiliary apps for the run.


=head2 BillingMethod => Str

  Specifies the billing method for a test run: C<metered> or
C<unmetered>. If the parameter is not specified, the default value is
C<metered>.


=head2 CustomerArtifactPaths => L<Paws::DeviceFarm::CustomerArtifactPaths>

  Input C<CustomerArtifactPaths> object for the scheduled run
configuration.


=head2 ExtraDataPackageArn => Str

  The ARN of the extra data for the run. The extra data is a .zip file
that AWS Device Farm will extract to external data for Android or the
app's sandbox for iOS.


=head2 Locale => Str

  Information about the locale that is used for the run.


=head2 Location => L<Paws::DeviceFarm::Location>

  Information about the location that is used for the run.


=head2 NetworkProfileArn => Str

  Reserved for internal use.


=head2 Radios => L<Paws::DeviceFarm::Radios>

  Information about the radio states for the run.


=head2 VpceConfigurationArns => ArrayRef[Str|Undef]

  An array of Amazon Resource Names (ARNs) for your VPC endpoint
configurations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

