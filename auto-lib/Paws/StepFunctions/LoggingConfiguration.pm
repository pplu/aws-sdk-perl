package Paws::StepFunctions::LoggingConfiguration;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::StepFunctions::LogDestination]', request_name => 'destinations', traits => ['NameInRequest']);
  has IncludeExecutionData => (is => 'ro', isa => 'Bool', request_name => 'includeExecutionData', traits => ['NameInRequest']);
  has Level => (is => 'ro', isa => 'Str', request_name => 'level', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::LoggingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::LoggingConfiguration object:

  $service_obj->Method(Att1 => { Destinations => $value, ..., Level => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::LoggingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Destinations

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[L<Paws::StepFunctions::LogDestination>]

  An object that describes where your execution history events will be
logged. Limited to size 1. Required, if your log level is not set to
C<OFF>.


=head2 IncludeExecutionData => Bool

  Determines whether execution history data is included in your log. When
set to C<FALSE>, data is excluded.


=head2 Level => Str

  Defines which category of execution history events are logged.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

