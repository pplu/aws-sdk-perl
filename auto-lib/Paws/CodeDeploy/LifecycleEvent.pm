package Paws::CodeDeploy::LifecycleEvent;
  use Moose;
  has Diagnostics => (is => 'ro', isa => 'Paws::CodeDeploy::Diagnostics', request_name => 'diagnostics', traits => ['NameInRequest']);
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has LifecycleEventName => (is => 'ro', isa => 'Str', request_name => 'lifecycleEventName', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::LifecycleEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::LifecycleEvent object:

  $service_obj->Method(Att1 => { Diagnostics => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::LifecycleEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->Diagnostics

=head1 DESCRIPTION

Information about a deployment lifecycle event.

=head1 ATTRIBUTES


=head2 Diagnostics => L<Paws::CodeDeploy::Diagnostics>

  Diagnostic information about the deployment lifecycle event.


=head2 EndTime => Str

  A timestamp that indicates when the deployment lifecycle event ended.


=head2 LifecycleEventName => Str

  The deployment lifecycle event name, such as ApplicationStop,
BeforeInstall, AfterInstall, ApplicationStart, or ValidateService.


=head2 StartTime => Str

  A timestamp that indicates when the deployment lifecycle event started.


=head2 Status => Str

  The deployment lifecycle event status:

=over

=item *

Pending: The deployment lifecycle event is pending.

=item *

InProgress: The deployment lifecycle event is in progress.

=item *

Succeeded: The deployment lifecycle event ran successfully.

=item *

Failed: The deployment lifecycle event has failed.

=item *

Skipped: The deployment lifecycle event has been skipped.

=item *

Unknown: The deployment lifecycle event is unknown.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

