package Paws::DeviceFarm::Problem;
  use Moose;
  has Device => (is => 'ro', isa => 'Paws::DeviceFarm::Device', xmlname => 'device', request_name => 'device', traits => ['Unwrapped','NameInRequest']);
  has Job => (is => 'ro', isa => 'Paws::DeviceFarm::ProblemDetail', xmlname => 'job', request_name => 'job', traits => ['Unwrapped','NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', xmlname => 'message', request_name => 'message', traits => ['Unwrapped','NameInRequest']);
  has Result => (is => 'ro', isa => 'Str', xmlname => 'result', request_name => 'result', traits => ['Unwrapped','NameInRequest']);
  has Run => (is => 'ro', isa => 'Paws::DeviceFarm::ProblemDetail', xmlname => 'run', request_name => 'run', traits => ['Unwrapped','NameInRequest']);
  has Suite => (is => 'ro', isa => 'Paws::DeviceFarm::ProblemDetail', xmlname => 'suite', request_name => 'suite', traits => ['Unwrapped','NameInRequest']);
  has Test => (is => 'ro', isa => 'Paws::DeviceFarm::ProblemDetail', xmlname => 'test', request_name => 'test', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Problem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Problem object:

  $service_obj->Method(Att1 => { Device => $value, ..., Test => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Problem object:

  $result = $service_obj->Method(...);
  $result->Att1->Device

=head1 DESCRIPTION

Represents a specific warning or failure.

=head1 ATTRIBUTES


=head2 Device => L<Paws::DeviceFarm::Device>

  Information about the associated device.


=head2 Job => L<Paws::DeviceFarm::ProblemDetail>

  Information about the associated job.


=head2 Message => Str

  A message about the problem's result.


=head2 Result => Str

  The problem's result.

Allowed values include:

=over

=item *

PENDING: A pending condition.

=item *

PASSED: A passing condition.

=item *

WARNED: A warning condition.

=item *

FAILED: A failed condition.

=item *

SKIPPED: A skipped condition.

=item *

ERRORED: An error condition.

=item *

STOPPED: A stopped condition.

=back



=head2 Run => L<Paws::DeviceFarm::ProblemDetail>

  Information about the associated run.


=head2 Suite => L<Paws::DeviceFarm::ProblemDetail>

  Information about the associated suite.


=head2 Test => L<Paws::DeviceFarm::ProblemDetail>

  Information about the associated test.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

