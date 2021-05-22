
package Paws::Macie2::GetFindingsFilterResponse;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FindingCriteria => (is => 'ro', isa => 'Paws::Macie2::FindingCriteria', traits => ['NameInRequest'], request_name => 'findingCriteria');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Position => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'position');
  has Tags => (is => 'ro', isa => 'Paws::Macie2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetFindingsFilterResponse

=head1 ATTRIBUTES


=head2 Action => Str

The action that's performed on findings that meet the filter criteria
(findingCriteria). Possible values are: ARCHIVE, suppress
(automatically archive) the findings; and, NOOP, don't perform any
action on the findings.

Valid values are: C<"ARCHIVE">, C<"NOOP">
=head2 Arn => Str

The Amazon Resource Name (ARN) of the filter.


=head2 Description => Str

The custom description of the filter.


=head2 FindingCriteria => L<Paws::Macie2::FindingCriteria>

The criteria that's used to filter findings.


=head2 Id => Str

The unique identifier for the filter.


=head2 Name => Str

The custom name of the filter.


=head2 Position => Int

The position of the filter in the list of saved filters on the Amazon
Macie console. This value also determines the order in which the filter
is applied to findings, relative to other filters that are also applied
to the findings.


=head2 Tags => L<Paws::Macie2::TagMap>

A map of key-value pairs that identifies the tags (keys and values)
that are associated with the filter.


=head2 _request_id => Str


=cut

