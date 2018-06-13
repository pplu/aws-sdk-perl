
package Paws::EC2::GetConsoleScreenshot;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has WakeUp => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConsoleScreenshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetConsoleScreenshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetConsoleScreenshot - Arguments for method GetConsoleScreenshot on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConsoleScreenshot on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetConsoleScreenshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConsoleScreenshot.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetConsoleScreenshotResult = $ec2->GetConsoleScreenshot(
      InstanceId => 'MyString',
      DryRun     => 1,            # OPTIONAL
      WakeUp     => 1,            # OPTIONAL
    );

    # Results:
    my $ImageData  = $GetConsoleScreenshotResult->ImageData;
    my $InstanceId = $GetConsoleScreenshotResult->InstanceId;

    # Returns a L<Paws::EC2::GetConsoleScreenshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetConsoleScreenshot>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance.



=head2 WakeUp => Bool

When set to C<true>, acts as keystroke input and wakes up an instance
that's in standby or "sleep" mode.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConsoleScreenshot in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

