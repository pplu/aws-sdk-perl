package Paws::Forecast::TestWindowSummary;
  use Moose;
  has Message => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TestWindowEnd => (is => 'ro', isa => 'Str');
  has TestWindowStart => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::TestWindowSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::TestWindowSummary object:

  $service_obj->Method(Att1 => { Message => $value, ..., TestWindowStart => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::TestWindowSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Message

=head1 DESCRIPTION

The status, start time, and end time of a backtest, as well as a
failure reason if applicable.

=head1 ATTRIBUTES


=head2 Message => Str

  If the test failed, the reason why it failed.


=head2 Status => Str

  The status of the test. Possible status values are:

=over

=item *

C<ACTIVE>

=item *

C<CREATE_IN_PROGRESS>

=item *

C<CREATE_FAILED>

=back



=head2 TestWindowEnd => Str

  The time at which the test ended.


=head2 TestWindowStart => Str

  The time at which the test began.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

