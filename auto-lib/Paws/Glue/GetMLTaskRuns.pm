# Generated from json/callargs_class.tt

package Paws::Glue::GetMLTaskRuns;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Glue::Types qw/Glue_TaskRunSortCriteria Glue_TaskRunFilterCriteria/;
  has Filter => (is => 'ro', isa => Glue_TaskRunFilterCriteria, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Sort => (is => 'ro', isa => Glue_TaskRunSortCriteria, predicate => 1);
  has TransformId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetMLTaskRuns');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::GetMLTaskRunsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'TransformId' => 1
                  },
  'types' => {
               'Filter' => {
                             'class' => 'Paws::Glue::TaskRunFilterCriteria',
                             'type' => 'Glue_TaskRunFilterCriteria'
                           },
               'Sort' => {
                           'class' => 'Paws::Glue::TaskRunSortCriteria',
                           'type' => 'Glue_TaskRunSortCriteria'
                         },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'TransformId' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetMLTaskRuns - Arguments for method GetMLTaskRuns on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMLTaskRuns on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetMLTaskRuns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMLTaskRuns.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetMLTaskRunsResponse = $glue->GetMLTaskRuns(
      TransformId => 'MyHashString',
      Filter      => {
        StartedAfter  => '1970-01-01T01:00:00',    # OPTIONAL
        StartedBefore => '1970-01-01T01:00:00',    # OPTIONAL
        Status        => 'STARTING'
        , # values: STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED, TIMEOUT; OPTIONAL
        TaskRunType => 'EVALUATION'
        , # values: EVALUATION, LABELING_SET_GENERATION, IMPORT_LABELS, EXPORT_LABELS, FIND_MATCHES; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      Sort       => {
        Column => 'TASK_RUN_TYPE',    # values: TASK_RUN_TYPE, STATUS, STARTED
        SortDirection => 'DESCENDING',    # values: DESCENDING, ASCENDING

      },    # OPTIONAL
    );

    # Results:
    my $NextToken = $GetMLTaskRunsResponse->NextToken;
    my $TaskRuns  = $GetMLTaskRunsResponse->TaskRuns;

    # Returns a L<Paws::Glue::GetMLTaskRunsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetMLTaskRuns>

=head1 ATTRIBUTES


=head2 Filter => Glue_TaskRunFilterCriteria

The filter criteria, in the C<TaskRunFilterCriteria> structure, for the
task run.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A token for pagination of the results. The default is empty.



=head2 Sort => Glue_TaskRunSortCriteria

The sorting criteria, in the C<TaskRunSortCriteria> structure, for the
task run.



=head2 B<REQUIRED> TransformId => Str

The unique identifier of the machine learning transform.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMLTaskRuns in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

