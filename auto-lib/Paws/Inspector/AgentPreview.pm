# Generated from default/object.tt
package Paws::Inspector::AgentPreview;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Inspector::Types qw//;
  has AgentHealth => (is => 'ro', isa => Str);
  has AgentId => (is => 'ro', isa => Str, required => 1);
  has AgentVersion => (is => 'ro', isa => Str);
  has AutoScalingGroup => (is => 'ro', isa => Str);
  has Hostname => (is => 'ro', isa => Str);
  has Ipv4Address => (is => 'ro', isa => Str);
  has KernelVersion => (is => 'ro', isa => Str);
  has OperatingSystem => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AutoScalingGroup' => {
                                       'type' => 'Str'
                                     },
               'AgentId' => {
                              'type' => 'Str'
                            },
               'Hostname' => {
                               'type' => 'Str'
                             },
               'Ipv4Address' => {
                                  'type' => 'Str'
                                },
               'OperatingSystem' => {
                                      'type' => 'Str'
                                    },
               'KernelVersion' => {
                                    'type' => 'Str'
                                  },
               'AgentHealth' => {
                                  'type' => 'Str'
                                },
               'AgentVersion' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'AutoScalingGroup' => 'autoScalingGroup',
                       'Hostname' => 'hostname',
                       'AgentId' => 'agentId',
                       'OperatingSystem' => 'operatingSystem',
                       'Ipv4Address' => 'ipv4Address',
                       'AgentVersion' => 'agentVersion',
                       'KernelVersion' => 'kernelVersion',
                       'AgentHealth' => 'agentHealth'
                     },
  'IsRequired' => {
                    'AgentId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AgentPreview

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::AgentPreview object:

  $service_obj->Method(Att1 => { AgentHealth => $value, ..., OperatingSystem => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::AgentPreview object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentHealth

=head1 DESCRIPTION

Used as a response element in the PreviewAgents action.

=head1 ATTRIBUTES


=head2 AgentHealth => Str

  The health status of the Amazon Inspector Agent.


=head2 B<REQUIRED> AgentId => Str

  The ID of the EC2 instance where the agent is installed.


=head2 AgentVersion => Str

  The version of the Amazon Inspector Agent.


=head2 AutoScalingGroup => Str

  The Auto Scaling group for the EC2 instance where the agent is
installed.


=head2 Hostname => Str

  The hostname of the EC2 instance on which the Amazon Inspector Agent is
installed.


=head2 Ipv4Address => Str

  The IP address of the EC2 instance on which the Amazon Inspector Agent
is installed.


=head2 KernelVersion => Str

  The kernel version of the operating system running on the EC2 instance
on which the Amazon Inspector Agent is installed.


=head2 OperatingSystem => Str

  The operating system running on the EC2 instance on which the Amazon
Inspector Agent is installed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

