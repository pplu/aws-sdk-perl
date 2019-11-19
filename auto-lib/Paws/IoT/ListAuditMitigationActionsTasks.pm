
package Paws::IoT::ListAuditMitigationActionsTasks;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw//;
  has AuditTaskId => (is => 'ro', isa => Str, predicate => 1);
  has EndTime => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has FindingId => (is => 'ro', isa => Str, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has StartTime => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TaskStatus => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListAuditMitigationActionsTasks');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/audit/mitigationactions/tasks');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::ListAuditMitigationActionsTasksResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StartTime' => {
                                'type' => 'Str'
                              },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'TaskStatus' => {
                                 'type' => 'Str'
                               },
               'FindingId' => {
                                'type' => 'Str'
                              },
               'AuditTaskId' => {
                                  'type' => 'Str'
                                },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'EndTime' => 1,
                    'StartTime' => 1
                  },
  'ParamInQuery' => {
                      'StartTime' => 'startTime',
                      'EndTime' => 'endTime',
                      'FindingId' => 'findingId',
                      'AuditTaskId' => 'auditTaskId',
                      'MaxResults' => 'maxResults',
                      'NextToken' => 'nextToken',
                      'TaskStatus' => 'taskStatus'
                    }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAuditMitigationActionsTasks - Arguments for method ListAuditMitigationActionsTasks on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAuditMitigationActionsTasks on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListAuditMitigationActionsTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAuditMitigationActionsTasks.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListAuditMitigationActionsTasksResponse =
      $iot->ListAuditMitigationActionsTasks(
      EndTime     => '1970-01-01T01:00:00',
      StartTime   => '1970-01-01T01:00:00',
      AuditTaskId => 'MyAuditTaskId',         # OPTIONAL
      FindingId   => 'MyFindingId',           # OPTIONAL
      MaxResults  => 1,                       # OPTIONAL
      NextToken   => 'MyNextToken',           # OPTIONAL
      TaskStatus  => 'IN_PROGRESS',           # OPTIONAL
      );

    # Results:
    my $NextToken = $ListAuditMitigationActionsTasksResponse->NextToken;
    my $Tasks     = $ListAuditMitigationActionsTasksResponse->Tasks;

    # Returns a L<Paws::IoT::ListAuditMitigationActionsTasksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListAuditMitigationActionsTasks>

=head1 ATTRIBUTES


=head2 AuditTaskId => Str

Specify this filter to limit results to tasks that were applied to
results for a specific audit.



=head2 B<REQUIRED> EndTime => Str

Specify this filter to limit results to tasks that were completed or
canceled on or before a specific date and time.



=head2 FindingId => Str

Specify this filter to limit results to tasks that were applied to a
specific audit finding.



=head2 MaxResults => Int

The maximum number of results to return at one time. The default is 25.



=head2 NextToken => Str

The token for the next set of results.



=head2 B<REQUIRED> StartTime => Str

Specify this filter to limit results to tasks that began on or after a
specific date and time.



=head2 TaskStatus => Str

Specify this filter to limit results to tasks that are in a specific
state.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"CANCELED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAuditMitigationActionsTasks in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

