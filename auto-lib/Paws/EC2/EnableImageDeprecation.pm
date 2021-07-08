
package Paws::EC2::EnableImageDeprecation;
  use Moose;
  has DeprecateAt => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableImageDeprecation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::EnableImageDeprecationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnableImageDeprecation - Arguments for method EnableImageDeprecation on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableImageDeprecation on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method EnableImageDeprecation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableImageDeprecation.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $EnableImageDeprecationResult = $ec2->EnableImageDeprecation(
      DeprecateAt => '1970-01-01T01:00:00',
      ImageId     => 'MyImageId',
      DryRun      => 1,                       # OPTIONAL
    );

    # Results:
    my $Return = $EnableImageDeprecationResult->Return;

    # Returns a L<Paws::EC2::EnableImageDeprecationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/EnableImageDeprecation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeprecateAt => Str

The date and time to deprecate the AMI, in UTC, in the following
format: I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z. If you specify a value
for seconds, Amazon EC2 rounds the seconds to the nearest minute.

You canE<rsquo>t specify a date in the past. The upper limit for
C<DeprecateAt> is 10 years from now.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> ImageId => Str

The ID of the AMI.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableImageDeprecation in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

