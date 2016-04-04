package Paws::SSM::InstanceInformation;
  use Moose;
  has AgentVersion => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has IsLatestVersion => (is => 'ro', isa => 'Bool');
  has LastPingDateTime => (is => 'ro', isa => 'Paws::API::TimeStamp');
  has PingStatus => (is => 'ro', isa => 'Str');
  has PlatformName => (is => 'ro', isa => 'Str');
  has PlatformType => (is => 'ro', isa => 'Str');
  has PlatformVersion => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InstanceInformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InstanceInformation object:

  $service_obj->Method(Att1 => { AgentVersion => $value, ..., PlatformVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InstanceInformation object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentVersion

=head1 DESCRIPTION

Describes a filter for a specific list of instances.

=head1 ATTRIBUTES


=head2 AgentVersion => Str

  The version of the SSM agent running on your instance.


=head2 InstanceId => Str

  The instance ID.


=head2 IsLatestVersion => Bool

  Indicates whether latest version of the SSM agent is running on your
instance.


=head2 LastPingDateTime => L<Paws::API::TimeStamp>

  The date and time when agent last pinged SSM service.


=head2 PingStatus => Str

  Connection status of the SSM agent.


=head2 PlatformName => Str

  The name of the operating system platform running on your instance.


=head2 PlatformType => Str

  The operating system platform type.


=head2 PlatformVersion => Str

  The version of the OS platform running on your instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

