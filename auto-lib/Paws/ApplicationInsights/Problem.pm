package Paws::ApplicationInsights::Problem;
  use Moose;
  has AffectedResource => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has Feedback => (is => 'ro', isa => 'Paws::ApplicationInsights::Feedback');
  has Id => (is => 'ro', isa => 'Str');
  has Insights => (is => 'ro', isa => 'Str');
  has ResourceGroupName => (is => 'ro', isa => 'Str');
  has SeverityLevel => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Title => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::Problem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationInsights::Problem object:

  $service_obj->Method(Att1 => { AffectedResource => $value, ..., Title => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationInsights::Problem object:

  $result = $service_obj->Method(...);
  $result->Att1->AffectedResource

=head1 DESCRIPTION

Describes a problem that is detected by correlating observations.

=head1 ATTRIBUTES


=head2 AffectedResource => Str

  The resource affected by the problem.


=head2 EndTime => Str

  The time when the problem ended, in epoch seconds.


=head2 Feedback => L<Paws::ApplicationInsights::Feedback>

  Feedback provided by the user about the problem.


=head2 Id => Str

  The ID of the problem.


=head2 Insights => Str

  A detailed analysis of the problem using machine learning.


=head2 ResourceGroupName => Str

  The name of the resource group affected by the problem.


=head2 SeverityLevel => Str

  A measure of the level of impact of the problem.


=head2 StartTime => Str

  The time when the problem started, in epoch seconds.


=head2 Status => Str

  The status of the problem.


=head2 Title => Str

  The name of the problem.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

