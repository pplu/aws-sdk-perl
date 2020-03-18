
package Paws::EC2::DescribeExportImageTasks;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has ExportImageTaskIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ExportImageTaskId' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExportImageTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeExportImageTasksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeExportImageTasks - Arguments for method DescribeExportImageTasks on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeExportImageTasks on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeExportImageTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeExportImageTasks.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeExportImageTasksResult = $ec2->DescribeExportImageTasks(
      DryRun             => 1,                                 # OPTIONAL
      ExportImageTaskIds => [ 'MyExportImageTaskId', ... ],    # OPTIONAL
      Filters            => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],                       # OPTIONAL
        },
        ...
      ],                                                       # OPTIONAL
      MaxResults => 1,                                         # OPTIONAL
      NextToken  => 'MyNextToken',                             # OPTIONAL
    );

    # Results:
    my $ExportImageTasks = $DescribeExportImageTasksResult->ExportImageTasks;
    my $NextToken        = $DescribeExportImageTasksResult->NextToken;

    # Returns a L<Paws::EC2::DescribeExportImageTasksResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeExportImageTasks>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 ExportImageTaskIds => ArrayRef[Str|Undef]

The IDs of the export image tasks.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

Filter tasks using the C<task-state> filter and one of the following
values: C<active>, C<completed>, C<deleting>, or C<deleted>.



=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

A token that indicates the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeExportImageTasks in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

