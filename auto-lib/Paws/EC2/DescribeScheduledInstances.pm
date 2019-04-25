
package Paws::EC2::DescribeScheduledInstances;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ScheduledInstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ScheduledInstanceId' );
  has SlotStartTimeRange => (is => 'ro', isa => 'Paws::EC2::SlotStartTimeRangeRequest');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScheduledInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeScheduledInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeScheduledInstances - Arguments for method DescribeScheduledInstances on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScheduledInstances on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeScheduledInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScheduledInstances.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe your Scheduled Instances
    # This example describes the specified Scheduled Instance.
    my $DescribeScheduledInstancesResult = $ec2->DescribeScheduledInstances(
      {
        'ScheduledInstanceIds' => ['sci-1234-1234-1234-1234-123456789012']
      }
    );

    # Results:
    my $ScheduledInstanceSet =
      $DescribeScheduledInstancesResult->ScheduledInstanceSet;

    # Returns a L<Paws::EC2::DescribeScheduledInstancesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeScheduledInstances>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<availability-zone> - The Availability Zone (for example,
C<us-west-2a>).

=item *

C<instance-type> - The instance type (for example, C<c4.large>).

=item *

C<network-platform> - The network platform (C<EC2-Classic> or
C<EC2-VPC>).

=item *

C<platform> - The platform (C<Linux/UNIX> or C<Windows>).

=back




=head2 MaxResults => Int

The maximum number of results to return in a single call. This value
can be between 5 and 300. The default value is 100. To retrieve the
remaining results, make another call with the returned C<NextToken>
value.



=head2 NextToken => Str

The token for the next set of results.



=head2 ScheduledInstanceIds => ArrayRef[Str|Undef]

One or more Scheduled Instance IDs.



=head2 SlotStartTimeRange => L<Paws::EC2::SlotStartTimeRangeRequest>

The time period for the first schedule to start.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScheduledInstances in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

