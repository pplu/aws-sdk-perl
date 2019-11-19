
package Paws::LexModels::GetExportResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::LexModels::Types qw//;
  has ExportStatus => (is => 'ro', isa => Str);
  has ExportType => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has ResourceType => (is => 'ro', isa => Str);
  has Url => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Version' => {
                              'type' => 'Str'
                            },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'ExportStatus' => {
                                   'type' => 'Str'
                                 },
               'Url' => {
                          'type' => 'Str'
                        },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'ExportType' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'Version' => 'version',
                       'FailureReason' => 'failureReason',
                       'Name' => 'name',
                       'ExportStatus' => 'exportStatus',
                       'Url' => 'url',
                       'ExportType' => 'exportType',
                       'ResourceType' => 'resourceType'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetExportResponse

=head1 ATTRIBUTES


=head2 ExportStatus => Str

The status of the export.

=over

=item *

C<IN_PROGRESS> - The export is in progress.

=item *

C<READY> - The export is complete.

=item *

C<FAILED> - The export could not be completed.

=back


Valid values are: C<"IN_PROGRESS">, C<"READY">, C<"FAILED">
=head2 ExportType => Str

The format of the exported data.

Valid values are: C<"ALEXA_SKILLS_KIT">, C<"LEX">
=head2 FailureReason => Str

If C<status> is C<FAILED>, Amazon Lex provides the reason that it
failed to export the resource.


=head2 Name => Str

The name of the bot being exported.


=head2 ResourceType => Str

The type of the exported resource.

Valid values are: C<"BOT">, C<"INTENT">, C<"SLOT_TYPE">
=head2 Url => Str

An S3 pre-signed URL that provides the location of the exported
resource. The exported resource is a ZIP archive that contains the
exported resource in JSON format. The structure of the archive may
change. Your code should not rely on the archive structure.


=head2 Version => Str

The version of the bot being exported.


=head2 _request_id => Str


=cut

