package Paws::DeviceFarm::Problem;
  use Moose;
  has device => (is => 'ro', isa => 'Paws::DeviceFarm::Device');
  has job => (is => 'ro', isa => 'Paws::DeviceFarm::ProblemDetail');
  has message => (is => 'ro', isa => 'Str');
  has result => (is => 'ro', isa => 'Str');
  has run => (is => 'ro', isa => 'Paws::DeviceFarm::ProblemDetail');
  has suite => (is => 'ro', isa => 'Paws::DeviceFarm::ProblemDetail');
  has test => (is => 'ro', isa => 'Paws::DeviceFarm::ProblemDetail');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Problem

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Problem object:

  $service_obj->Method(Att1 => { device => $value, ..., test => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Problem object:

  $result = $service_obj->Method(...);
  $result->Att1->device

=head1 ATTRIBUTES

=head2 device => Paws::DeviceFarm::Device

  

Information about the associated device.










=head2 job => Paws::DeviceFarm::ProblemDetail

  

Information about the associated job.










=head2 message => Str

  

A message about the problem's result.










=head2 result => Str

  

The problem's result.

Allowed values include:

=over

=item *

ERRORED: An error condition.

=item *

FAILED: A failed condition.

=item *

SKIPPED: A skipped condition.

=item *

STOPPED: A stopped condition.

=item *

PASSED: A passing condition.

=item *

PENDING: A pending condition.

=item *

WARNED: A warning condition.

=back










=head2 run => Paws::DeviceFarm::ProblemDetail

  

Information about the associated run.










=head2 suite => Paws::DeviceFarm::ProblemDetail

  

Information about the associated suite.










=head2 test => Paws::DeviceFarm::ProblemDetail

  

Information about the associated test.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

