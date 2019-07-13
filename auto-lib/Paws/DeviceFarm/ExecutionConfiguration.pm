package Paws::DeviceFarm::ExecutionConfiguration;
  use Moose;
  has AccountsCleanup => (is => 'ro', isa => 'Bool', request_name => 'accountsCleanup', traits => ['NameInRequest']);
  has AppPackagesCleanup => (is => 'ro', isa => 'Bool', request_name => 'appPackagesCleanup', traits => ['NameInRequest']);
  has JobTimeoutMinutes => (is => 'ro', isa => 'Int', request_name => 'jobTimeoutMinutes', traits => ['NameInRequest']);
  has SkipAppResign => (is => 'ro', isa => 'Bool', request_name => 'skipAppResign', traits => ['NameInRequest']);
  has VideoCapture => (is => 'ro', isa => 'Bool', request_name => 'videoCapture', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ExecutionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::ExecutionConfiguration object:

  $service_obj->Method(Att1 => { AccountsCleanup => $value, ..., VideoCapture => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::ExecutionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountsCleanup

=head1 DESCRIPTION

Represents configuration information about a test run, such as the
execution timeout (in minutes).

=head1 ATTRIBUTES


=head2 AccountsCleanup => Bool

  True if account cleanup is enabled at the beginning of the test;
otherwise, false.


=head2 AppPackagesCleanup => Bool

  True if app package cleanup is enabled at the beginning of the test;
otherwise, false.


=head2 JobTimeoutMinutes => Int

  The number of minutes a test run will execute before it times out.


=head2 SkipAppResign => Bool

  When set to C<true>, for private devices, Device Farm will not sign
your app again. For public devices, Device Farm always signs your apps
again and this parameter has no effect.

For more information about how Device Farm re-signs your app(s), see Do
you modify my app? (https://aws.amazon.com/device-farm/faq/) in the
I<AWS Device Farm FAQs>.


=head2 VideoCapture => Bool

  Set to true to enable video capture; otherwise, set to false. The
default is true.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

