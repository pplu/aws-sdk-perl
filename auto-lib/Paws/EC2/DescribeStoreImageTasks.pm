
package Paws::EC2::DescribeStoreImageTasks;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has ImageIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ImageId' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStoreImageTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeStoreImageTasksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeStoreImageTasks - Arguments for method DescribeStoreImageTasks on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStoreImageTasks on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeStoreImageTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStoreImageTasks.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeStoreImageTasksResult = $ec2->DescribeStoreImageTasks(
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
      ImageIds   => [ 'MyImageId', ... ],    # OPTIONAL
      MaxResults => 1,                       # OPTIONAL
      NextToken  => 'MyString',              # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeStoreImageTasksResult->NextToken;
    my $StoreImageTaskResults =
      $DescribeStoreImageTasksResult->StoreImageTaskResults;

    # Returns a L<Paws::EC2::DescribeStoreImageTasksResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeStoreImageTasks>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

The filters.

=over

=item *

C<task-state> - Returns tasks in a certain state (C<InProgress> |
C<Completed> | C<Failed>)

=item *

C<bucket> - Returns task information for tasks that targeted a specific
bucket. For the filter value, specify the bucket name.

=back




=head2 ImageIds => ArrayRef[Str|Undef]

The AMI IDs for which to show progress. Up to 20 AMI IDs can be
included in a request.



=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned C<NextToken>
value. This value can be between 1 and 200. You cannot specify this
parameter and the C<ImageIDs> parameter in the same call.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStoreImageTasks in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

