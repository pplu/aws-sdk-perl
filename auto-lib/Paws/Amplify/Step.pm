package Paws::Amplify::Step;
  use Moose;
  has ArtifactsUrl => (is => 'ro', isa => 'Str', request_name => 'artifactsUrl', traits => ['NameInRequest']);
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest'], required => 1);
  has LogUrl => (is => 'ro', isa => 'Str', request_name => 'logUrl', traits => ['NameInRequest']);
  has Screenshots => (is => 'ro', isa => 'Paws::Amplify::Screenshots', request_name => 'screenshots', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
  has StepName => (is => 'ro', isa => 'Str', request_name => 'stepName', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::Step

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::Step object:

  $service_obj->Method(Att1 => { ArtifactsUrl => $value, ..., StepName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::Step object:

  $result = $service_obj->Method(...);
  $result->Att1->ArtifactsUrl

=head1 DESCRIPTION

Structure for an execution step for an execution job, for an Amplify
App.

=head1 ATTRIBUTES


=head2 ArtifactsUrl => Str

  Url to teh artifact for the execution step.


=head2 B<REQUIRED> EndTime => Str

  End date/ time of the execution step.


=head2 LogUrl => Str

  Url to the logs for the execution step.


=head2 Screenshots => L<Paws::Amplify::Screenshots>

  List of screenshot Urls for the execution step, if relevant.


=head2 B<REQUIRED> StartTime => Str

  Start date/ time of the execution step.


=head2 B<REQUIRED> Status => Str

  Status of the execution step.


=head2 B<REQUIRED> StepName => Str

  Name of the execution step.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

