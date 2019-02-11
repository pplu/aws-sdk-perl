package Paws::PinpointEmail::DeliverabilityTestReport;
  use Moose;
  has CreateDate => (is => 'ro', isa => 'Str');
  has DeliverabilityTestStatus => (is => 'ro', isa => 'Str');
  has FromEmailAddress => (is => 'ro', isa => 'Str');
  has ReportId => (is => 'ro', isa => 'Str');
  has ReportName => (is => 'ro', isa => 'Str');
  has Subject => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::DeliverabilityTestReport

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::DeliverabilityTestReport object:

  $service_obj->Method(Att1 => { CreateDate => $value, ..., Subject => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::DeliverabilityTestReport object:

  $result = $service_obj->Method(...);
  $result->Att1->CreateDate

=head1 DESCRIPTION

An object that contains metadata related to a predictive inbox
placement test.

=head1 ATTRIBUTES


=head2 CreateDate => Str

  The date and time when the predictive inbox placement test was created,
in Unix time format.


=head2 DeliverabilityTestStatus => Str

  The status of the predictive inbox placement test. If the status is
C<IN_PROGRESS>, then the predictive inbox placement test is currently
running. Predictive inbox placement tests are usually complete within
24 hours of creating the test. If the status is C<COMPLETE>, then the
test is finished, and you can use the C<GetDeliverabilityTestReport> to
view the results of the test.


=head2 FromEmailAddress => Str

  The sender address that you specified for the predictive inbox
placement test.


=head2 ReportId => Str

  A unique string that identifies the predictive inbox placement test.


=head2 ReportName => Str

  A name that helps you identify a predictive inbox placement test
report.


=head2 Subject => Str

  The subject line for an email that you submitted in a predictive inbox
placement test.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

