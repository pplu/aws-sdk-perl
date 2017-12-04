package Paws::ElasticBeanstalk::PlatformSummary;
  use Moose;
  has OperatingSystemName => (is => 'ro', isa => 'Str');
  has OperatingSystemVersion => (is => 'ro', isa => 'Str');
  has PlatformArn => (is => 'ro', isa => 'Str');
  has PlatformCategory => (is => 'ro', isa => 'Str');
  has PlatformOwner => (is => 'ro', isa => 'Str');
  has PlatformStatus => (is => 'ro', isa => 'Str');
  has SupportedAddonList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SupportedTierList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::PlatformSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::PlatformSummary object:

  $service_obj->Method(Att1 => { OperatingSystemName => $value, ..., SupportedTierList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::PlatformSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->OperatingSystemName

=head1 DESCRIPTION

Detailed information about a platform.

=head1 ATTRIBUTES


=head2 OperatingSystemName => Str

  The operating system used by the platform.


=head2 OperatingSystemVersion => Str

  The version of the operating system used by the platform.


=head2 PlatformArn => Str

  The ARN of the platform.


=head2 PlatformCategory => Str

  The category of platform.


=head2 PlatformOwner => Str

  The AWS account ID of the person who created the platform.


=head2 PlatformStatus => Str

  The status of the platform. You can create an environment from the
platform once it is ready.


=head2 SupportedAddonList => ArrayRef[Str|Undef]

  The additions associated with the platform.


=head2 SupportedTierList => ArrayRef[Str|Undef]

  The tiers in which the platform runs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

