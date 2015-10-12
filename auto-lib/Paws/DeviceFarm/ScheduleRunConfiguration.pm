package Paws::DeviceFarm::ScheduleRunConfiguration;
  use Moose;
  has auxiliaryApps => (is => 'ro', isa => 'ArrayRef[Str]');
  has billingMethod => (is => 'ro', isa => 'Str');
  has extraDataPackageArn => (is => 'ro', isa => 'Str');
  has locale => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Paws::DeviceFarm::Location');
  has networkProfileArn => (is => 'ro', isa => 'Str');
  has radios => (is => 'ro', isa => 'Paws::DeviceFarm::Radios');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ScheduleRunConfiguration

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::ScheduleRunConfiguration object:

  $service_obj->Method(Att1 => { auxiliaryApps => $value, ..., radios => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::ScheduleRunConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->auxiliaryApps

=head1 ATTRIBUTES

=head2 auxiliaryApps => ArrayRef[Str]

  

A list of auxiliary apps for the run.










=head2 billingMethod => Str

  

Specifies the billing method for a test run: C<metered> or
C<unmetered>. If the parameter is not specified, the default value is
C<unmetered>.










=head2 extraDataPackageArn => Str

  

The ARN of the extra data for the run. The extra data is a .zip file
that AWS Device Farm will extract to external data for Android or the
app's sandbox for iOS.










=head2 locale => Str

  

Information about the locale that is used for the run.










=head2 location => Paws::DeviceFarm::Location

  

Information about the location that is used for the run.










=head2 networkProfileArn => Str

  

Reserved for internal use.










=head2 radios => Paws::DeviceFarm::Radios

  

Information about the radio states for the run.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

