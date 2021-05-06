
package Paws::LexModels::GetExportResponse;
  use Moose;
  has ExportStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exportStatus');
  has ExportType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exportType');
  has FailureReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureReason');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType');
  has Url => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'url');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');

  has _request_id => (is => 'ro', isa => 'Str');
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

