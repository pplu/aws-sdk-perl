package Paws::Inspector::AssetAttributes;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', xmlname => 'agentId', request_name => 'agentId', traits => ['Unwrapped','NameInRequest']);
  has AmiId => (is => 'ro', isa => 'Str', xmlname => 'amiId', request_name => 'amiId', traits => ['Unwrapped','NameInRequest']);
  has AutoScalingGroup => (is => 'ro', isa => 'Str', xmlname => 'autoScalingGroup', request_name => 'autoScalingGroup', traits => ['Unwrapped','NameInRequest']);
  has Hostname => (is => 'ro', isa => 'Str', xmlname => 'hostname', request_name => 'hostname', traits => ['Unwrapped','NameInRequest']);
  has Ipv4Addresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'ipv4Addresses', request_name => 'ipv4Addresses', traits => ['Unwrapped','NameInRequest']);
  has SchemaVersion => (is => 'ro', isa => 'Int', xmlname => 'schemaVersion', request_name => 'schemaVersion', traits => ['Unwrapped','NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AssetAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::AssetAttributes object:

  $service_obj->Method(Att1 => { AgentId => $value, ..., SchemaVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::AssetAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentId

=head1 DESCRIPTION

A collection of attributes of the host from which the finding is
generated.

=head1 ATTRIBUTES


=head2 AgentId => Str

  The ID of the agent that is installed on the EC2 instance where the
finding is generated.


=head2 AmiId => Str

  The ID of the Amazon Machine Image (AMI) that is installed on the EC2
instance where the finding is generated.


=head2 AutoScalingGroup => Str

  The Auto Scaling group of the EC2 instance where the finding is
generated.


=head2 Hostname => Str

  The hostname of the EC2 instance where the finding is generated.


=head2 Ipv4Addresses => ArrayRef[Str|Undef]

  The list of IP v4 addresses of the EC2 instance where the finding is
generated.


=head2 B<REQUIRED> SchemaVersion => Int

  The schema version of this data type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

