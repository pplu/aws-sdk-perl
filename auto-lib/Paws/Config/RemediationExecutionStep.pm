package Paws::Config::RemediationExecutionStep;
  use Moose;
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StopTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::RemediationExecutionStep

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::RemediationExecutionStep object:

  $service_obj->Method(Att1 => { ErrorMessage => $value, ..., StopTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::RemediationExecutionStep object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorMessage

=head1 DESCRIPTION

Name of the step from the SSM document.

=head1 ATTRIBUTES


=head2 ErrorMessage => Str

  An error message if the step was interrupted during execution.


=head2 Name => Str

  The details of the step.


=head2 StartTime => Str

  The time when the step started.


=head2 State => Str

  The valid status of the step.


=head2 StopTime => Str

  The time when the step stopped.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

