package Paws::OpsWorks::Command;
  use Moose;
  has AcknowledgedAt => (is => 'ro', isa => 'Str');
  has CommandId => (is => 'ro', isa => 'Str');
  has CompletedAt => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DeploymentId => (is => 'ro', isa => 'Str');
  has ExitCode => (is => 'ro', isa => 'Int');
  has InstanceId => (is => 'ro', isa => 'Str');
  has LogUrl => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::Command

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::Command object:

  $service_obj->Method(Att1 => { AcknowledgedAt => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::Command object:

  $result = $service_obj->Method(...);
  $result->Att1->AcknowledgedAt

=head1 DESCRIPTION

Describes a command.

=head1 ATTRIBUTES


=head2 AcknowledgedAt => Str

  Date and time when the command was acknowledged.


=head2 CommandId => Str

  The command ID.


=head2 CompletedAt => Str

  Date when the command completed.


=head2 CreatedAt => Str

  Date and time when the command was run.


=head2 DeploymentId => Str

  The command deployment ID.


=head2 ExitCode => Int

  The command exit code.


=head2 InstanceId => Str

  The ID of the instance where the command was executed.


=head2 LogUrl => Str

  The URL of the command log.


=head2 Status => Str

  The command status:

=over

=item *

failed

=item *

successful

=item *

skipped

=item *

pending

=back



=head2 Type => Str

  The command type:

=over

=item *

C<configure>

=item *

C<deploy>

=item *

C<execute_recipes>

=item *

C<install_dependencies>

=item *

C<restart>

=item *

C<rollback>

=item *

C<setup>

=item *

C<start>

=item *

C<stop>

=item *

C<undeploy>

=item *

C<update_custom_cookbooks>

=item *

C<update_dependencies>

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

