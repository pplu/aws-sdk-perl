
package Paws::FSX::DescribeDataRepositoryTasks;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::FSX::DataRepositoryTaskFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TaskIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDataRepositoryTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::DescribeDataRepositoryTasksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DescribeDataRepositoryTasks - Arguments for method DescribeDataRepositoryTasks on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDataRepositoryTasks on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method DescribeDataRepositoryTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDataRepositoryTasks.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $DescribeDataRepositoryTasksResponse = $fsx->DescribeDataRepositoryTasks(
      Filters => [
        {
          Name =>
            'file-system-id', # values: file-system-id, task-lifecycle; OPTIONAL
          Values => [
            'MyDataRepositoryTaskFilterValue', ...    # min: 1, max: 128
          ],                                          # max: 20; OPTIONAL
        },
        ...
      ],                                              # OPTIONAL
      MaxResults => 1,                                # OPTIONAL
      NextToken  => 'MyNextToken',                    # OPTIONAL
      TaskIds    => [
        'MyTaskId', ...                               # min: 12, max: 128
      ],                                              # OPTIONAL
    );

    # Results:
    my $DataRepositoryTasks =
      $DescribeDataRepositoryTasksResponse->DataRepositoryTasks;
    my $NextToken = $DescribeDataRepositoryTasksResponse->NextToken;

    # Returns a L<Paws::FSX::DescribeDataRepositoryTasksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/DescribeDataRepositoryTasks>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::FSX::DataRepositoryTaskFilter>]

(Optional) You can use filters to narrow the
C<DescribeDataRepositoryTasks> response to include just tasks for
specific file systems, or tasks in a specific lifecycle state.



=head2 MaxResults => Int





=head2 NextToken => Str





=head2 TaskIds => ArrayRef[Str|Undef]

(Optional) IDs of the tasks whose descriptions you want to retrieve
(String).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDataRepositoryTasks in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

