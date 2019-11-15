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
  


  sub operations { qw/CreateLedger DeleteLedger DescribeJournalS3Export DescribeLedger ExportJournalToS3 GetBlock GetDigest GetRevision ListJournalS3Exports ListJournalS3ExportsForLedger ListLedgers ListTagsForResource TagResource UntagResource UpdateLedger / }

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

=head2 CreateLedger

=over

=item Name => Str

=item PermissionsMode => Str

=item [DeletionProtection => Bool]

=item [Tags => L<Paws::QLDB::Tags>]


=back

Each argument is described in detail in: L<Paws::QLDB::CreateLedger>

Returns: a L<Paws::QLDB::CreateLedgerResponse> instance

Creates a new ledger in your AWS account.


=head2 DeleteLedger

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::QLDB::DeleteLedger>

Returns: nothing

Deletes a ledger and all of its contents. This action is irreversible.

If deletion protection is enabled, you must first disable it before you
can delete the ledger using the QLDB API or the AWS Command Line
Interface (AWS CLI). You can disable it by calling the C<UpdateLedger>
operation to set the flag to C<false>. The QLDB console disables
deletion protection for you when you use it to delete a ledger.


=head2 DescribeJournalS3Export

=over

=item ExportId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::QLDB::DescribeJournalS3Export>

Returns: a L<Paws::QLDB::DescribeJournalS3ExportResponse> instance

Returns information about a journal export job, including the ledger
name, export ID, when it was created, current status, and its start and
end time export parameters.

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

Returns a journal block object at a specified address in a ledger. Also
returns a proof of the specified block for verification if
C<DigestTipAddress> is provided.

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




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

