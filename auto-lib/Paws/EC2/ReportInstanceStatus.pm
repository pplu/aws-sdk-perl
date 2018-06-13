
package Paws::EC2::ReportInstanceStatus;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime' );
  has Instances => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'instanceId' , required => 1);
  has ReasonCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'reasonCode' , required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReportInstanceStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReportInstanceStatus - Arguments for method ReportInstanceStatus on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReportInstanceStatus on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ReportInstanceStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReportInstanceStatus.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    $ec2->ReportInstanceStatus(
      Instances   => [ 'MyString', ... ],
      ReasonCodes => [
        'instance-stuck-in-state',
        ... # values: instance-stuck-in-state, unresponsive, not-accepting-credentials, password-not-available, performance-network, performance-instance-store, performance-ebs-volume, performance-other, other
      ],
      Status      => 'ok',
      Description => 'MyString',               # OPTIONAL
      DryRun      => 1,                        # OPTIONAL
      EndTime     => '1970-01-01T01:00:00',    # OPTIONAL
      StartTime   => '1970-01-01T01:00:00',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ReportInstanceStatus>

=head1 ATTRIBUTES


=head2 Description => Str

Descriptive text about the health state of your instance.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EndTime => Str

The time at which the reported instance health state ended.



=head2 B<REQUIRED> Instances => ArrayRef[Str|Undef]

One or more instances.



=head2 B<REQUIRED> ReasonCodes => ArrayRef[Str|Undef]

One or more reason codes that describe the health state of your
instance.

=over

=item *

C<instance-stuck-in-state>: My instance is stuck in a state.

=item *

C<unresponsive>: My instance is unresponsive.

=item *

C<not-accepting-credentials>: My instance is not accepting my
credentials.

=item *

C<password-not-available>: A password is not available for my instance.

=item *

C<performance-network>: My instance is experiencing performance
problems that I believe are network related.

=item *

C<performance-instance-store>: My instance is experiencing performance
problems that I believe are related to the instance stores.

=item *

C<performance-ebs-volume>: My instance is experiencing performance
problems that I believe are related to an EBS volume.

=item *

C<performance-other>: My instance is experiencing performance problems.

=item *

C<other>: [explain using the description parameter]

=back




=head2 StartTime => Str

The time at which the reported instance health state began.



=head2 B<REQUIRED> Status => Str

The status of all instances listed.

Valid values are: C<"ok">, C<"impaired">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReportInstanceStatus in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

