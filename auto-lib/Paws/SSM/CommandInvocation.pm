package Paws::SSM::CommandInvocation;
  use Moose;
  has CommandId => (is => 'ro', isa => 'Str');
  has CommandPlugins => (is => 'ro', isa => 'ArrayRef[Paws::SSM::CommandPlugin]');
  has Comment => (is => 'ro', isa => 'Str');
  has DocumentName => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has RequestedDateTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TraceOutput => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CommandInvocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::CommandInvocation object:

  $service_obj->Method(Att1 => { CommandId => $value, ..., TraceOutput => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::CommandInvocation object:

  $result = $service_obj->Method(...);
  $result->Att1->CommandId

=head1 DESCRIPTION

An invocation is copy of a command sent to a specific instance. A
command can apply to one or more instances. A command invocation
applies to one instance. For example, if a user executes SendCommand
against three instances, then a command invocation is created for each
requested instance ID. A command invocation returns status and detail
information about a command you executed.

=head1 ATTRIBUTES


=head2 CommandId => Str

  The command against which this invocation was requested.


=head2 CommandPlugins => ArrayRef[L<Paws::SSM::CommandPlugin>]

  


=head2 Comment => Str

  User-specified information about the command, such as a brief
description of what the command should do.


=head2 DocumentName => Str

  The document name that was requested for execution.


=head2 InstanceId => Str

  The instance ID in which this invocation was requested.


=head2 RequestedDateTime => Str

  The time and date the request was sent to this instance.


=head2 Status => Str

  Whether or not the invocation succeeded, failed, or is pending.


=head2 TraceOutput => Str

  Gets the trace output sent by the agent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

