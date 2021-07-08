package Paws::QLDB;
  use Moose;
  sub service { 'qldb' }
  sub signing_name { 'qldb' }
  sub version { '2019-01-02' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelJournalKinesisStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::CancelJournalKinesisStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLedger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::CreateLedger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLedger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::DeleteLedger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJournalKinesisStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::DescribeJournalKinesisStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJournalS3Export {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::DescribeJournalS3Export', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLedger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::DescribeLedger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportJournalToS3 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::ExportJournalToS3', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::GetBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDigest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::GetDigest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRevision {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::GetRevision', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJournalKinesisStreamsForLedger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::ListJournalKinesisStreamsForLedger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJournalS3Exports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::ListJournalS3Exports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJournalS3ExportsForLedger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::ListJournalS3ExportsForLedger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLedgers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::ListLedgers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StreamJournalToKinesis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::StreamJournalToKinesis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLedger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::UpdateLedger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLedgerPermissionsMode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDB::UpdateLedgerPermissionsMode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CancelJournalKinesisStream CreateLedger DeleteLedger DescribeJournalKinesisStream DescribeJournalS3Export DescribeLedger ExportJournalToS3 GetBlock GetDigest GetRevision ListJournalKinesisStreamsForLedger ListJournalS3Exports ListJournalS3ExportsForLedger ListLedgers ListTagsForResource StreamJournalToKinesis TagResource UntagResource UpdateLedger UpdateLedgerPermissionsMode / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB - Perl Interface to AWS Amazon QLDB

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('QLDB');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

The control plane for Amazon QLDB

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02>


=head1 METHODS

=head2 CancelJournalKinesisStream

=over

=item LedgerName => Str

=item StreamId => Str


=back

Each argument is described in detail in: L<Paws::QLDB::CancelJournalKinesisStream>

Returns: a L<Paws::QLDB::CancelJournalKinesisStreamResponse> instance

Ends a given Amazon QLDB journal stream. Before a stream can be
canceled, its current status must be C<ACTIVE>.

You can't restart a stream after you cancel it. Canceled QLDB stream
resources are subject to a 7-day retention period, so they are
automatically deleted after this limit expires.


=head2 CreateLedger

=over

=item Name => Str

=item PermissionsMode => Str

=item [DeletionProtection => Bool]

=item [Tags => L<Paws::QLDB::Tags>]


=back

Each argument is described in detail in: L<Paws::QLDB::CreateLedger>

Returns: a L<Paws::QLDB::CreateLedgerResponse> instance

Creates a new ledger in your AWS account in the current Region.


=head2 DeleteLedger

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::QLDB::DeleteLedger>

Returns: nothing

Deletes a ledger and all of its contents. This action is irreversible.

If deletion protection is enabled, you must first disable it before you
can delete the ledger. You can disable it by calling the
C<UpdateLedger> operation to set the flag to C<false>.


=head2 DescribeJournalKinesisStream

=over

=item LedgerName => Str

=item StreamId => Str


=back

Each argument is described in detail in: L<Paws::QLDB::DescribeJournalKinesisStream>

Returns: a L<Paws::QLDB::DescribeJournalKinesisStreamResponse> instance

Returns detailed information about a given Amazon QLDB journal stream.
The output includes the Amazon Resource Name (ARN), stream name,
current status, creation time, and the parameters of the original
stream creation request.

This action does not return any expired journal streams. For more
information, see Expiration for terminal streams
(https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration)
in the I<Amazon QLDB Developer Guide>.


=head2 DescribeJournalS3Export

=over

=item ExportId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::QLDB::DescribeJournalS3Export>

Returns: a L<Paws::QLDB::DescribeJournalS3ExportResponse> instance

Returns information about a journal export job, including the ledger
name, export ID, creation time, current status, and the parameters of
the original export creation request.

This action does not return any expired export jobs. For more
information, see Export job expiration
(https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration)
in the I<Amazon QLDB Developer Guide>.

If the export job with the given C<ExportId> doesn't exist, then throws
C<ResourceNotFoundException>.

If the ledger with the given C<Name> doesn't exist, then throws
C<ResourceNotFoundException>.


=head2 DescribeLedger

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::QLDB::DescribeLedger>

Returns: a L<Paws::QLDB::DescribeLedgerResponse> instance

Returns information about a ledger, including its state and when it was
created.


=head2 ExportJournalToS3

=over

=item ExclusiveEndTime => Str

=item InclusiveStartTime => Str

=item Name => Str

=item RoleArn => Str

=item S3ExportConfiguration => L<Paws::QLDB::S3ExportConfiguration>


=back

Each argument is described in detail in: L<Paws::QLDB::ExportJournalToS3>

Returns: a L<Paws::QLDB::ExportJournalToS3Response> instance

Exports journal contents within a date and time range from a ledger
into a specified Amazon Simple Storage Service (Amazon S3) bucket. The
data is written as files in Amazon Ion format.

If the ledger with the given C<Name> doesn't exist, then throws
C<ResourceNotFoundException>.

If the ledger with the given C<Name> is in C<CREATING> status, then
throws C<ResourcePreconditionNotMetException>.

You can initiate up to two concurrent journal export requests for each
ledger. Beyond this limit, journal export requests throw
C<LimitExceededException>.


=head2 GetBlock

=over

=item BlockAddress => L<Paws::QLDB::ValueHolder>

=item Name => Str

=item [DigestTipAddress => L<Paws::QLDB::ValueHolder>]


=back

Each argument is described in detail in: L<Paws::QLDB::GetBlock>

Returns: a L<Paws::QLDB::GetBlockResponse> instance

Returns a block object at a specified address in a journal. Also
returns a proof of the specified block for verification if
C<DigestTipAddress> is provided.

For information about the data contents in a block, see Journal
contents
(https://docs.aws.amazon.com/qldb/latest/developerguide/journal-contents.html)
in the I<Amazon QLDB Developer Guide>.

If the specified ledger doesn't exist or is in C<DELETING> status, then
throws C<ResourceNotFoundException>.

If the specified ledger is in C<CREATING> status, then throws
C<ResourcePreconditionNotMetException>.

If no block exists with the specified address, then throws
C<InvalidParameterException>.


=head2 GetDigest

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::QLDB::GetDigest>

Returns: a L<Paws::QLDB::GetDigestResponse> instance

Returns the digest of a ledger at the latest committed block in the
journal. The response includes a 256-bit hash value and a block
address.


=head2 GetRevision

=over

=item BlockAddress => L<Paws::QLDB::ValueHolder>

=item DocumentId => Str

=item Name => Str

=item [DigestTipAddress => L<Paws::QLDB::ValueHolder>]


=back

Each argument is described in detail in: L<Paws::QLDB::GetRevision>

Returns: a L<Paws::QLDB::GetRevisionResponse> instance

Returns a revision data object for a specified document ID and block
address. Also returns a proof of the specified revision for
verification if C<DigestTipAddress> is provided.


=head2 ListJournalKinesisStreamsForLedger

=over

=item LedgerName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QLDB::ListJournalKinesisStreamsForLedger>

Returns: a L<Paws::QLDB::ListJournalKinesisStreamsForLedgerResponse> instance

Returns an array of all Amazon QLDB journal stream descriptors for a
given ledger. The output of each stream descriptor includes the same
details that are returned by C<DescribeJournalKinesisStream>.

This action does not return any expired journal streams. For more
information, see Expiration for terminal streams
(https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration)
in the I<Amazon QLDB Developer Guide>.

This action returns a maximum of C<MaxResults> items. It is paginated
so that you can retrieve all the items by calling
C<ListJournalKinesisStreamsForLedger> multiple times.


=head2 ListJournalS3Exports

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QLDB::ListJournalS3Exports>

Returns: a L<Paws::QLDB::ListJournalS3ExportsResponse> instance

Returns an array of journal export job descriptions for all ledgers
that are associated with the current AWS account and Region.

This action returns a maximum of C<MaxResults> items, and is paginated
so that you can retrieve all the items by calling
C<ListJournalS3Exports> multiple times.

This action does not return any expired export jobs. For more
information, see Export job expiration
(https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration)
in the I<Amazon QLDB Developer Guide>.


=head2 ListJournalS3ExportsForLedger

=over

=item Name => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QLDB::ListJournalS3ExportsForLedger>

Returns: a L<Paws::QLDB::ListJournalS3ExportsForLedgerResponse> instance

Returns an array of journal export job descriptions for a specified
ledger.

This action returns a maximum of C<MaxResults> items, and is paginated
so that you can retrieve all the items by calling
C<ListJournalS3ExportsForLedger> multiple times.

This action does not return any expired export jobs. For more
information, see Export job expiration
(https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration)
in the I<Amazon QLDB Developer Guide>.


=head2 ListLedgers

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QLDB::ListLedgers>

Returns: a L<Paws::QLDB::ListLedgersResponse> instance

Returns an array of ledger summaries that are associated with the
current AWS account and Region.

This action returns a maximum of 100 items and is paginated so that you
can retrieve all the items by calling C<ListLedgers> multiple times.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::QLDB::ListTagsForResource>

Returns: a L<Paws::QLDB::ListTagsForResourceResponse> instance

Returns all tags for a specified Amazon QLDB resource.


=head2 StreamJournalToKinesis

=over

=item InclusiveStartTime => Str

=item KinesisConfiguration => L<Paws::QLDB::KinesisConfiguration>

=item LedgerName => Str

=item RoleArn => Str

=item StreamName => Str

=item [ExclusiveEndTime => Str]

=item [Tags => L<Paws::QLDB::Tags>]


=back

Each argument is described in detail in: L<Paws::QLDB::StreamJournalToKinesis>

Returns: a L<Paws::QLDB::StreamJournalToKinesisResponse> instance

Creates a journal stream for a given Amazon QLDB ledger. The stream
captures every document revision that is committed to the ledger's
journal and delivers the data to a specified Amazon Kinesis Data
Streams resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::QLDB::Tags>


=back

Each argument is described in detail in: L<Paws::QLDB::TagResource>

Returns: a L<Paws::QLDB::TagResourceResponse> instance

Adds one or more tags to a specified Amazon QLDB resource.

A resource can have up to 50 tags. If you try to create more than 50
tags for a resource, your request fails and returns an error.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::QLDB::UntagResource>

Returns: a L<Paws::QLDB::UntagResourceResponse> instance

Removes one or more tags from a specified Amazon QLDB resource. You can
specify up to 50 tag keys to remove.


=head2 UpdateLedger

=over

=item Name => Str

=item [DeletionProtection => Bool]


=back

Each argument is described in detail in: L<Paws::QLDB::UpdateLedger>

Returns: a L<Paws::QLDB::UpdateLedgerResponse> instance

Updates properties on a ledger.


=head2 UpdateLedgerPermissionsMode

=over

=item Name => Str

=item PermissionsMode => Str


=back

Each argument is described in detail in: L<Paws::QLDB::UpdateLedgerPermissionsMode>

Returns: a L<Paws::QLDB::UpdateLedgerPermissionsModeResponse> instance

Updates the permissions mode of a ledger.

Before you switch to the C<STANDARD> permissions mode, you must first
create all required IAM policies and table tags to avoid disruption to
your users. To learn more, see Migrating to the standard permissions
mode
(https://docs.aws.amazon.com/qldb/latest/developerguide/ledger-management.basics.html#ledger-mgmt.basics.update-permissions.migrating)
in the I<Amazon QLDB Developer Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

