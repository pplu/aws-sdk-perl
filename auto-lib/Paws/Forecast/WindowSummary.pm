package Paws::Forecast::WindowSummary;
  use Moose;
  has EvaluationType => (is => 'ro', isa => 'Str');
  has ItemCount => (is => 'ro', isa => 'Int');
  has Metrics => (is => 'ro', isa => 'Paws::Forecast::Metrics');
  has TestWindowEnd => (is => 'ro', isa => 'Str');
  has TestWindowStart => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::WindowSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::WindowSummary object:

  $service_obj->Method(Att1 => { EvaluationType => $value, ..., TestWindowStart => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::WindowSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->EvaluationType

=head1 DESCRIPTION

The metrics for a time range within the evaluation portion of a
dataset. This object is part of the EvaluationResult object.

The C<TestWindowStart> and C<TestWindowEnd> parameters are determined
by the C<BackTestWindowOffset> parameter of the EvaluationParameters
object.

=head1 ATTRIBUTES


=head2 EvaluationType => Str

  The type of evaluation.

=over

=item *

C<SUMMARY> - The average metrics across all windows.

=item *

C<COMPUTED> - The metrics for the specified window.

=back



=head2 ItemCount => Int

  The number of data points within the window.


=head2 Metrics => L<Paws::Forecast::Metrics>

  Provides metrics used to evaluate the performance of a predictor.


=head2 TestWindowEnd => Str

  The timestamp that defines the end of the window.


=head2 TestWindowStart => Str

  The timestamp that defines the start of the window.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

