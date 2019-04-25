package Paws::SSM::InstanceInformation;
  use Moose;
  has ActivationId => (is => 'ro', isa => 'Str');
  has AgentVersion => (is => 'ro', isa => 'Str');
  has AssociationOverview => (is => 'ro', isa => 'Paws::SSM::InstanceAggregatedAssociationOverview');
  has AssociationStatus => (is => 'ro', isa => 'Str');
  has ComputerName => (is => 'ro', isa => 'Str');
  has IamRole => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has IPAddress => (is => 'ro', isa => 'Str');
  has IsLatestVersion => (is => 'ro', isa => 'Bool');
  has LastAssociationExecutionDate => (is => 'ro', isa => 'Str');
  has LastPingDateTime => (is => 'ro', isa => 'Str');
  has LastSuccessfulAssociationExecutionDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has PingStatus => (is => 'ro', isa => 'Str');
  has PlatformName => (is => 'ro', isa => 'Str');
  has PlatformType => (is => 'ro', isa => 'Str');
  has PlatformVersion => (is => 'ro', isa => 'Str');
  has RegistrationDate => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
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

  $service_obj->Method(Att1 => { ActivationId => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InstanceInformation object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivationId

=head1 DESCRIPTION

Describes a filter for a specific list of instances.

=head1 ATTRIBUTES


=head2 ActivationId => Str

  The activation ID created by Systems Manager when the server or VM was
registered.


=head2 AgentVersion => Str

  The version of SSM Agent running on your Linux instance.


=head2 AssociationOverview => L<Paws::SSM::InstanceAggregatedAssociationOverview>

  Information about the association.


=head2 AssociationStatus => Str

  The status of the association.


=head2 ComputerName => Str

  The fully qualified host name of the managed instance.


=head2 IamRole => Str

  The Amazon Identity and Access Management (IAM) role assigned to the
on-premises Systems Manager managed instances. This call does not
return the IAM role for Amazon EC2 instances.


=head2 InstanceId => Str

  The instance ID.


=head2 IPAddress => Str

  The IP address of the managed instance.


=head2 IsLatestVersion => Bool

  Indicates whether latest version of SSM Agent is running on your
instance. Some older versions of Windows Server use the EC2Config
service to process SSM requests. For this reason, this field does not
indicate whether or not the latest version is installed on Windows
managed instances.


=head2 LastAssociationExecutionDate => Str

  The date the association was last executed.


=head2 LastPingDateTime => Str

  The date and time when agent last pinged Systems Manager service.


=head2 LastSuccessfulAssociationExecutionDate => Str

  The last date the association was successfully run.


=head2 Name => Str

  The name of the managed instance.


=head2 PingStatus => Str

  Connection status of SSM Agent.


=head2 PlatformName => Str

  The name of the operating system platform running on your instance.


=head2 PlatformType => Str

  The operating system platform type.


=head2 PlatformVersion => Str

  The version of the OS platform running on your instance.


=head2 RegistrationDate => Str

  The date the server or VM was registered with AWS as a managed
instance.


=head2 ResourceType => Str

  The type of instance. Instances are either EC2 instances or managed
instances.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

