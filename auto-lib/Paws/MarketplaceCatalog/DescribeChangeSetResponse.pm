
package Paws::MarketplaceCatalog::DescribeChangeSetResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MarketplaceCatalog::Types qw/MarketplaceCatalog_ChangeSummary/;
  has ChangeSet => (is => 'ro', isa => ArrayRef[MarketplaceCatalog_ChangeSummary]);
  has ChangeSetArn => (is => 'ro', isa => Str);
  has ChangeSetId => (is => 'ro', isa => Str);
  has ChangeSetName => (is => 'ro', isa => Str);
  has EndTime => (is => 'ro', isa => Str);
  has FailureDescription => (is => 'ro', isa => Str);
  has StartTime => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ChangeSetId' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'StartTime' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ChangeSet' => {
                                'class' => 'Paws::MarketplaceCatalog::ChangeSummary',
                                'type' => 'ArrayRef[MarketplaceCatalog_ChangeSummary]'
                              },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'ChangeSetArn' => {
                                   'type' => 'Str'
                                 },
               'FailureDescription' => {
                                         'type' => 'Str'
                                       },
               'ChangeSetName' => {
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

Paws::MarketplaceCatalog::DescribeChangeSetResponse

=head1 ATTRIBUTES


=head2 ChangeSet => ArrayRef[MarketplaceCatalog_ChangeSummary]

An array of C<ChangeSummary> objects.


=head2 ChangeSetArn => Str

The ARN associated with the unique identifier for the change set
referenced in this request.


=head2 ChangeSetId => Str

Required. The unique identifier for the change set referenced in this
request.


=head2 ChangeSetName => Str

The optional name provided in the C<StartChangeSet> request. If you do
not provide a name, one is set by default.


=head2 EndTime => Str

The date and time, in ISO 8601 format (2018-02-27T13:45:22Z), the
request transitioned to a terminal state. The change cannot transition
to a different state. Null if the request is not in a terminal state.


=head2 FailureDescription => Str

Returned if there is a failure on the change set, but that failure is
not related to any of the changes in the request.


=head2 StartTime => Str

The date and time, in ISO 8601 format (2018-02-27T13:45:22Z), the
request started.


=head2 Status => Str

The status of the change request.

Valid values are: C<"PREPARING">, C<"APPLYING">, C<"SUCCEEDED">, C<"CANCELLED">, C<"FAILED">
=head2 _request_id => Str


=cut

