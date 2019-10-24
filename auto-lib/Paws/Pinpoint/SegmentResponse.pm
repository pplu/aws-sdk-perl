
package Paws::Pinpoint::SegmentResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Pinpoint::Types qw/Pinpoint_MapOf__string Pinpoint_SegmentImportResource Pinpoint_SegmentGroupList Pinpoint_SegmentDimensions/;
  has ApplicationId => (is => 'ro', isa => Str, required => 1);
  has Arn => (is => 'ro', isa => Str, required => 1);
  has CreationDate => (is => 'ro', isa => Str, required => 1);
  has Dimensions => (is => 'ro', isa => Pinpoint_SegmentDimensions);
  has Id => (is => 'ro', isa => Str, required => 1);
  has ImportDefinition => (is => 'ro', isa => Pinpoint_SegmentImportResource);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has SegmentGroups => (is => 'ro', isa => Pinpoint_SegmentGroupList);
  has SegmentType => (is => 'ro', isa => Str, required => 1);
  has Tags => (is => 'ro', isa => Pinpoint_MapOf__string);
  has Version => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SegmentGroups' => {
                                    'class' => 'Paws::Pinpoint::SegmentGroupList',
                                    'type' => 'Pinpoint_SegmentGroupList'
                                  },
               'Id' => {
                         'type' => 'Str'
                       },
               'Dimensions' => {
                                 'class' => 'Paws::Pinpoint::SegmentDimensions',
                                 'type' => 'Pinpoint_SegmentDimensions'
                               },
               'ImportDefinition' => {
                                       'class' => 'Paws::Pinpoint::SegmentImportResource',
                                       'type' => 'Pinpoint_SegmentImportResource'
                                     },
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'Version' => {
                              'type' => 'Int'
                            },
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               'SegmentType' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Tags' => {
                           'class' => 'Paws::Pinpoint::MapOf__string',
                           'type' => 'Pinpoint_MapOf__string'
                         },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'IsRequired' => {
                    'ApplicationId' => 1,
                    'Id' => 1,
                    'SegmentType' => 1,
                    'CreationDate' => 1,
                    'Arn' => 1
                  }
}
;
    return $Params_map;
  }

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


=head2 Dimensions => Pinpoint_SegmentDimensions

The dimension settings for the segment.


=head2 B<REQUIRED> Id => Str

The unique identifier for the segment.


=head2 ImportDefinition => Pinpoint_SegmentImportResource

The settings for the import job that's associated with the segment.


=head2 LastModifiedDate => Str

The date and time when the segment was last modified.


=head2 Name => Str

The name of the segment.


=head2 SegmentGroups => Pinpoint_SegmentGroupList

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
=head2 Tags => Pinpoint_MapOf__string

A string-to-string map of key-value pairs that identifies the tags that
are associated with the segment. Each tag consists of a required tag
key and an associated tag value.


=head2 Version => Int

The version number of the segment.


=head2 _request_id => Str


=cut

