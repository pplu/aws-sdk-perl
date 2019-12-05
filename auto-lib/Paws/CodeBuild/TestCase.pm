package Paws::CodeBuild::TestCase;
  use Moose;
  has DurationInNanoSeconds => (is => 'ro', isa => 'Int', request_name => 'durationInNanoSeconds', traits => ['NameInRequest']);
  has Expired => (is => 'ro', isa => 'Str', request_name => 'expired', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Prefix => (is => 'ro', isa => 'Str', request_name => 'prefix', traits => ['NameInRequest']);
  has ReportArn => (is => 'ro', isa => 'Str', request_name => 'reportArn', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has TestRawDataPath => (is => 'ro', isa => 'Str', request_name => 'testRawDataPath', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::TestCase

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::TestCase object:

  $service_obj->Method(Att1 => { DurationInNanoSeconds => $value, ..., TestRawDataPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::TestCase object:

  $result = $service_obj->Method(...);
  $result->Att1->DurationInNanoSeconds

=head1 DESCRIPTION

Information about a test case created using a framework such as NUnit
or Cucumber. A test case might be a unit test or a configuration test.

=head1 ATTRIBUTES


=head2 DurationInNanoSeconds => Int

  The number of nanoseconds it took to run this test case.


=head2 Expired => Str

  The date and time a test case expires. A test case expires 30 days
after it is created. An expired test case is not available to view in
CodeBuild.


=head2 Message => Str

  A message associated with a test case. For example, an error message or
stack trace.


=head2 Name => Str

  The name of the test case.


=head2 Prefix => Str

  A string that is applied to a series of related test cases. CodeBuild
generates the prefix. The prefix depends on the framework used to
generate the tests.


=head2 ReportArn => Str

  The ARN of the report to which the test case belongs.


=head2 Status => Str

  The status returned by the test case after it was run. Valid statuses
are C<SUCCEEDED>, C<FAILED>, C<ERROR>, C<SKIPPED>, and C<UNKNOWN>.


=head2 TestRawDataPath => Str

  The path to the raw data file that contains the test result.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

