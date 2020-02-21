package Paws::DeviceFarm::TestGridSession;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has BillingMinutes => (is => 'ro', isa => 'Num', request_name => 'billingMinutes', traits => ['NameInRequest']);
  has Created => (is => 'ro', isa => 'Str', request_name => 'created', traits => ['NameInRequest']);
  has Ended => (is => 'ro', isa => 'Str', request_name => 'ended', traits => ['NameInRequest']);
  has SeleniumProperties => (is => 'ro', isa => 'Str', request_name => 'seleniumProperties', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::TestGridSession

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::TestGridSession object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::TestGridSession object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A TestGridSession is a single instance of a browser launched from the
URL provided by a call to CreateTestGridUrl.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the session.


=head2 BillingMinutes => Num

  The number of billed minutes that were used for this session.


=head2 Created => Str

  The time that the session was started.


=head2 Ended => Str

  The time the session ended.


=head2 SeleniumProperties => Str

  A JSON object of options and parameters passed to the Selenium
WebDriver.


=head2 Status => Str

  The state of the session.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

