
package Paws::EC2::DescribeReplaceRootVolumeTasks;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ReplaceRootVolumeTaskIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ReplaceRootVolumeTaskId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReplaceRootVolumeTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeReplaceRootVolumeTasksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeReplaceRootVolumeTasks - Arguments for method DescribeReplaceRootVolumeTasks on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReplaceRootVolumeTasks on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeReplaceRootVolumeTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReplaceRootVolumeTasks.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeReplaceRootVolumeTasksResult =
      $ec2->DescribeReplaceRootVolumeTasks(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults               => 1,                                  # OPTIONAL
      NextToken                => 'MyNextToken',                      # OPTIONAL
      ReplaceRootVolumeTaskIds => [ 'MyReplaceRootVolumeTaskId', ... ]
      ,                                                               # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeReplaceRootVolumeTasksResult->NextToken;
    my $ReplaceRootVolumeTasks =
      $DescribeReplaceRootVolumeTasksResult->ReplaceRootVolumeTasks;

    # Returns a L<Paws::EC2::DescribeReplaceRootVolumeTasksResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeReplaceRootVolumeTasks>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

Filter to use:

=over

=item *

C<instance-id> - The ID of the instance for which the root volume
replacement task was created.

=back




=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 ReplaceRootVolumeTaskIds => ArrayRef[Str|Undef]

The ID of the root volume replacement task to view.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReplaceRootVolumeTasks in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

