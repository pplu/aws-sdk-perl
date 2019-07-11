
package Paws::Pinpoint::SegmentResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreationDate => (is => 'ro', isa => 'Str', required => 1);
  has Dimensions => (is => 'ro', isa => 'Paws::Pinpoint::SegmentDimensions');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has ImportDefinition => (is => 'ro', isa => 'Paws::Pinpoint::SegmentImportResource');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SegmentGroups => (is => 'ro', isa => 'Paws::Pinpoint::SegmentGroupList');
  has SegmentType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string', traits => ['NameInRequest'], request_name => 'tags');
  has Version => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SegmentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application that the segment is
associated with.


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the segment.


=head2 B<REQUIRED> CreationDate => Str

The date and time when the segment was created.


=head2 Dimensions => L<Paws::Pinpoint::SegmentDimensions>

The dimension settings for the segment.


=head2 B<REQUIRED> Id => Str

The unique identifier for the segment.


=head2 ImportDefinition => L<Paws::Pinpoint::SegmentImportResource>

The settings for the import job that's associated with the segment.


=head2 LastModifiedDate => Str

The date and time when the segment was last modified.


=head2 Name => Str

The name of the segment.


=head2 SegmentGroups => L<Paws::Pinpoint::SegmentGroupList>

A list of one or more segment groups that apply to the segment. Each
segment group consists of zero or more base segments and the dimensions
that are applied to those base segments.


=head2 B<REQUIRED> SegmentType => Str

The segment type. Valid values are:

=over

=item *

DIMENSIONAL - A dynamic segment, which is a segment that uses selection
criteria that you specify and is based on endpoint data that's reported
by your app. Dynamic segments can change over time.

=item *

IMPORT - A static segment, which is a segment that uses selection
criteria that you specify and is based on endpoint definitions that you
import from a file. Imported segments are static; they don't change
over time.

=back


Valid values are: C<"DIMENSIONAL">, C<"IMPORT">
=head2 Tags => L<Paws::Pinpoint::MapOf__string>

A string-to-string map of key-value pairs that identifies the tags that
are associated with the segment. Each tag consists of a required tag
key and an associated tag value.


=head2 Version => Int

The version number of the segment.


=head2 _request_id => Str


=cut

