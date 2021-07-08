
package Paws::MarketplaceCatalog::DescribeChangeSetResponse;
  use Moose;
  has ChangeSet => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceCatalog::ChangeSummary]');
  has ChangeSetArn => (is => 'ro', isa => 'Str');
  has ChangeSetId => (is => 'ro', isa => 'Str');
  has ChangeSetName => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has FailureCode => (is => 'ro', isa => 'Str');
  has FailureDescription => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::DescribeChangeSetResponse

=head1 ATTRIBUTES


=head2 ChangeSet => ArrayRef[L<Paws::MarketplaceCatalog::ChangeSummary>]

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


=head2 FailureCode => Str

Returned if the change set is in C<FAILED> status. Can be either
C<CLIENT_ERROR>, which means that there are issues with the request
(see the C<ErrorDetailList>), or C<SERVER_FAULT>, which means that
there is a problem in the system, and you should retry your request.

Valid values are: C<"CLIENT_ERROR">, C<"SERVER_FAULT">
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

