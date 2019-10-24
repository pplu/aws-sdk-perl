# Generated from json/callargs_class.tt

package Paws::Discovery::DescribeImportTasks;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Discovery::Types qw/Discovery_ImportTaskFilter/;
  has Filters => (is => 'ro', isa => ArrayRef[Discovery_ImportTaskFilter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeImportTasks');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Discovery::DescribeImportTasksResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Filters' => {
                              'class' => 'Paws::Discovery::ImportTaskFilter',
                              'type' => 'ArrayRef[Discovery_ImportTaskFilter]'
                            },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Filters' => 'filters',
                       'MaxResults' => 'maxResults'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeImportTasks - Arguments for method DescribeImportTasks on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeImportTasks on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method DescribeImportTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeImportTasks.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $DescribeImportTasksResponse = $discovery->DescribeImportTasks(
      Filters => [
        {
          Name =>
            'IMPORT_TASK_ID',   # values: IMPORT_TASK_ID, STATUS, NAME; OPTIONAL
          Values => [
            'MyImportTaskFilterValue', ...    # min: 1, max: 100
          ],                                  # min: 1, max: 100; OPTIONAL
        },
        ...
      ],                                      # OPTIONAL
      MaxResults => 1,                        # OPTIONAL
      NextToken  => 'MyNextToken',            # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeImportTasksResponse->NextToken;
    my $Tasks     = $DescribeImportTasksResponse->Tasks;

    # Returns a L<Paws::Discovery::DescribeImportTasksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/DescribeImportTasks>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[Discovery_ImportTaskFilter]

An array of name-value pairs that you provide to filter the results for
the C<DescribeImportTask> request to a specific subset of results.
Currently, wildcard values aren't supported for filters.



=head2 MaxResults => Int

The maximum number of results that you want this request to return, up
to 100.



=head2 NextToken => Str

The token to request a specific page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeImportTasks in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

