
package Paws::Glacier::GlacierJobDescription;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has ArchiveId => (is => 'ro', isa => 'Str');
  has ArchiveSHA256TreeHash => (is => 'ro', isa => 'Str');
  has ArchiveSizeInBytes => (is => 'ro', isa => 'Int');
  has Completed => (is => 'ro', isa => 'Bool');
  has CompletionDate => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has InventoryRetrievalParameters => (is => 'ro', isa => 'Paws::Glacier::InventoryRetrievalJobDescription');
  has InventorySizeInBytes => (is => 'ro', isa => 'Int');
  has JobDescription => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str');
  has JobOutputPath => (is => 'ro', isa => 'Str');
  has OutputLocation => (is => 'ro', isa => 'Paws::Glacier::OutputLocation');
  has RetrievalByteRange => (is => 'ro', isa => 'Str');
  has SelectParameters => (is => 'ro', isa => 'Paws::Glacier::SelectParameters');
  has SHA256TreeHash => (is => 'ro', isa => 'Str');
  has SNSTopic => (is => 'ro', isa => 'Str');
  has StatusCode => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has Tier => (is => 'ro', isa => 'Str');
  has VaultARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::GlacierJobDescription

=head1 ATTRIBUTES


=head2 Action => Str

The job type. This value is either C<ArchiveRetrieval>,
C<InventoryRetrieval>, or C<Select>.

Valid values are: C<"ArchiveRetrieval">, C<"InventoryRetrieval">, C<"Select">
=head2 ArchiveId => Str

The archive ID requested for a select job or archive retrieval.
Otherwise, this field is null.


=head2 ArchiveSHA256TreeHash => Str

The SHA256 tree hash of the entire archive for an archive retrieval.
For inventory retrieval or select jobs, this field is null.


=head2 ArchiveSizeInBytes => Int

For an archive retrieval job, this value is the size in bytes of the
archive being requested for download. For an inventory retrieval or
select job, this value is null.


=head2 Completed => Bool

The job status. When a job is completed, you get the job's output using
Get Job Output (GET output).


=head2 CompletionDate => Str

The UTC time that the job request completed. While the job is in
progress, the value is null.


=head2 CreationDate => Str

The UTC date when the job was created. This value is a string
representation of ISO 8601 date format, for example
C<"2012-03-20T17:03:43.221Z">.


=head2 InventoryRetrievalParameters => L<Paws::Glacier::InventoryRetrievalJobDescription>

Parameters used for range inventory retrieval.


=head2 InventorySizeInBytes => Int

For an inventory retrieval job, this value is the size in bytes of the
inventory requested for download. For an archive retrieval or select
job, this value is null.


=head2 JobDescription => Str

The job description provided when initiating the job.


=head2 JobId => Str

An opaque string that identifies an Amazon Glacier job.


=head2 JobOutputPath => Str

Contains the job output location.


=head2 OutputLocation => L<Paws::Glacier::OutputLocation>

Contains the location where the data from the select job is stored.


=head2 RetrievalByteRange => Str

The retrieved byte range for archive retrieval jobs in the form
I<StartByteValue>-I<EndByteValue>. If no range was specified in the
archive retrieval, then the whole archive is retrieved. In this case,
I<StartByteValue> equals 0 and I<EndByteValue> equals the size of the
archive minus 1. For inventory retrieval or select jobs, this field is
null.


=head2 SelectParameters => L<Paws::Glacier::SelectParameters>

Contains the parameters used for a select.


=head2 SHA256TreeHash => Str

For an archive retrieval job, this value is the checksum of the
archive. Otherwise, this value is null.

The SHA256 tree hash value for the requested range of an archive. If
the B<InitiateJob> request for an archive specified a tree-hash aligned
range, then this field returns a value.

If the whole archive is retrieved, this value is the same as the
ArchiveSHA256TreeHash value.

This field is null for the following:

=over

=item *

Archive retrieval jobs that specify a range that is not tree-hash
aligned

=back

=over

=item *

Archival jobs that specify a range that is equal to the whole archive,
when the job status is C<InProgress>

=back

=over

=item *

Inventory jobs

=item *

Select jobs

=back



=head2 SNSTopic => Str

An Amazon SNS topic that receives notification.


=head2 StatusCode => Str

The status code can be C<InProgress>, C<Succeeded>, or C<Failed>, and
indicates the status of the job.

Valid values are: C<"InProgress">, C<"Succeeded">, C<"Failed">
=head2 StatusMessage => Str

A friendly message that describes the job status.


=head2 Tier => Str

The tier to use for a select or an archive retrieval. Valid values are
C<Expedited>, C<Standard>, or C<Bulk>. C<Standard> is the default.


=head2 VaultARN => Str

The Amazon Resource Name (ARN) of the vault from which an archive
retrieval was requested.


=head2 _request_id => Str


=cut

