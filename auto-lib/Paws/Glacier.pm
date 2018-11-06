package Paws::Glacier;
  use Moose;
  sub service { 'glacier' }
  sub signing_name { 'glacier' }
  sub version { '2012-06-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
       sub { defined $_[0]->http_status and $_[0]->http_status == 408 and $_[0]->code eq 'RequestTimeoutException' },
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::GlacierCaller';

  
  sub AbortMultipartUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::AbortMultipartUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AbortVaultLock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::AbortVaultLock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddTagsToVault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::AddTagsToVault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CompleteMultipartUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::CompleteMultipartUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CompleteVaultLock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::CompleteVaultLock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::CreateVault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteArchive {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::DeleteArchive', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::DeleteVault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVaultAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::DeleteVaultAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVaultNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::DeleteVaultNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::DescribeJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::DescribeVault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataRetrievalPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::GetDataRetrievalPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobOutput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::GetJobOutput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVaultAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::GetVaultAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVaultLock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::GetVaultLock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVaultNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::GetVaultNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InitiateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::InitiateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InitiateMultipartUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::InitiateMultipartUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InitiateVaultLock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::InitiateVaultLock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::ListJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMultipartUploads {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::ListMultipartUploads', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListParts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::ListParts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProvisionedCapacity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::ListProvisionedCapacity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForVault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::ListTagsForVault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVaults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::ListVaults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseProvisionedCapacity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::PurchaseProvisionedCapacity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTagsFromVault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::RemoveTagsFromVault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetDataRetrievalPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::SetDataRetrievalPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetVaultAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::SetVaultAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetVaultNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::SetVaultNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UploadArchive {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::UploadArchive', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UploadMultipartPart {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glacier::UploadMultipartPart', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->ListJobs(@_, marker => $next_result->Marker);
        push @{ $result->JobList }, @{ $next_result->JobList };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'JobList') foreach (@{ $result->JobList });
        $result = $self->ListJobs(@_, marker => $result->Marker);
      }
      $callback->($_ => 'JobList') foreach (@{ $result->JobList });
    }

    return undef
  }
  sub ListAllMultipartUploads {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMultipartUploads(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->ListMultipartUploads(@_, marker => $next_result->Marker);
        push @{ $result->UploadsList }, @{ $next_result->UploadsList };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'UploadsList') foreach (@{ $result->UploadsList });
        $result = $self->ListMultipartUploads(@_, marker => $result->Marker);
      }
      $callback->($_ => 'UploadsList') foreach (@{ $result->UploadsList });
    }

    return undef
  }
  sub ListAllParts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListParts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->ListParts(@_, marker => $next_result->Marker);
        push @{ $result->Parts }, @{ $next_result->Parts };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Parts') foreach (@{ $result->Parts });
        $result = $self->ListParts(@_, marker => $result->Marker);
      }
      $callback->($_ => 'Parts') foreach (@{ $result->Parts });
    }

    return undef
  }
  sub ListAllVaults {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVaults(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->ListVaults(@_, marker => $next_result->Marker);
        push @{ $result->VaultList }, @{ $next_result->VaultList };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'VaultList') foreach (@{ $result->VaultList });
        $result = $self->ListVaults(@_, marker => $result->Marker);
      }
      $callback->($_ => 'VaultList') foreach (@{ $result->VaultList });
    }

    return undef
  }


  sub operations { qw/AbortMultipartUpload AbortVaultLock AddTagsToVault CompleteMultipartUpload CompleteVaultLock CreateVault DeleteArchive DeleteVault DeleteVaultAccessPolicy DeleteVaultNotifications DescribeJob DescribeVault GetDataRetrievalPolicy GetJobOutput GetVaultAccessPolicy GetVaultLock GetVaultNotifications InitiateJob InitiateMultipartUpload InitiateVaultLock ListJobs ListMultipartUploads ListParts ListProvisionedCapacity ListTagsForVault ListVaults PurchaseProvisionedCapacity RemoveTagsFromVault SetDataRetrievalPolicy SetVaultAccessPolicy SetVaultNotifications UploadArchive UploadMultipartPart / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier - Perl Interface to AWS Amazon Glacier

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Glacier');
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

Amazon Glacier is a storage solution for "cold data."

Amazon Glacier is an extremely low-cost storage service that provides
secure, durable, and easy-to-use storage for data backup and archival.
With Amazon Glacier, customers can store their data cost effectively
for months, years, or decades. Amazon Glacier also enables customers to
offload the administrative burdens of operating and scaling storage to
AWS, so they don't have to worry about capacity planning, hardware
provisioning, data replication, hardware failure and recovery, or
time-consuming hardware migrations.

Amazon Glacier is a great storage choice when low storage cost is
paramount and your data is rarely retrieved. If your application
requires fast or frequent access to your data, consider using Amazon
S3. For more information, see Amazon Simple Storage Service (Amazon S3)
(http://aws.amazon.com/s3/).

You can store any kind of data in any format. There is no maximum limit
on the total amount of data you can store in Amazon Glacier.

If you are a first-time user of Amazon Glacier, we recommend that you
begin by reading the following sections in the I<Amazon Glacier
Developer Guide>:

=over

=item *

What is Amazon Glacier
(http://docs.aws.amazon.com/amazonglacier/latest/dev/introduction.html)
- This section of the Developer Guide describes the underlying data
model, the operations it supports, and the AWS SDKs that you can use to
interact with the service.

=item *

Getting Started with Amazon Glacier
(http://docs.aws.amazon.com/amazonglacier/latest/dev/amazon-glacier-getting-started.html)
- The Getting Started section walks you through the process of creating
a vault, uploading archives, creating jobs to download archives,
retrieving the job output, and deleting archives.

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/glacier/>


=head1 METHODS

=head2 AbortMultipartUpload

=over

=item AccountId => Str

=item UploadId => Str

=item VaultName => Str


=back

Each argument is described in detail in: L<Paws::Glacier::AbortMultipartUpload>

Returns: nothing

This operation aborts a multipart upload identified by the upload ID.

After the Abort Multipart Upload request succeeds, you cannot upload
any more parts to the multipart upload or complete the multipart
upload. Aborting a completed upload fails. However, aborting an
already-aborted upload will succeed, for a short time. For more
information about uploading a part and completing a multipart upload,
see UploadMultipartPart and CompleteMultipartUpload.

This operation is idempotent.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see Access Control
Using AWS Identity and Access Management (IAM)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

For conceptual information and underlying REST API, see Working with
Archives in Amazon Glacier
(http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html)
and Abort Multipart Upload
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html)
in the I<Amazon Glacier Developer Guide>.


=head2 AbortVaultLock

=over

=item AccountId => Str

=item VaultName => Str


=back

Each argument is described in detail in: L<Paws::Glacier::AbortVaultLock>

Returns: nothing

This operation aborts the vault locking process if the vault lock is
not in the C<Locked> state. If the vault lock is in the C<Locked> state
when this operation is requested, the operation returns an
C<AccessDeniedException> error. Aborting the vault locking process
removes the vault lock policy from the specified vault.

A vault lock is put into the C<InProgress> state by calling
InitiateVaultLock. A vault lock is put into the C<Locked> state by
calling CompleteVaultLock. You can get the state of a vault lock by
calling GetVaultLock. For more information about the vault locking
process, see Amazon Glacier Vault Lock
(http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html).
For more information about vault lock policies, see Amazon Glacier
Access Control with Vault Lock Policies
(http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html).

This operation is idempotent. You can successfully invoke this
operation multiple times, if the vault lock is in the C<InProgress>
state or if there is no policy associated with the vault.


=head2 AddTagsToVault

=over

=item AccountId => Str

=item VaultName => Str

=item [Tags => L<Paws::Glacier::TagMap>]


=back

Each argument is described in detail in: L<Paws::Glacier::AddTagsToVault>

Returns: nothing

This operation adds the specified tags to a vault. Each tag is composed
of a key and a value. Each vault can have up to 10 tags. If your
request would cause the tag limit for the vault to be exceeded, the
operation throws the C<LimitExceededException> error. If a tag already
exists on the vault under a specified key, the existing key value will
be overwritten. For more information about tags, see Tagging Amazon
Glacier Resources
(http://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html).


=head2 CompleteMultipartUpload

=over

=item AccountId => Str

=item UploadId => Str

=item VaultName => Str

=item [ArchiveSize => Str]

=item [Checksum => Str]


=back

Each argument is described in detail in: L<Paws::Glacier::CompleteMultipartUpload>

Returns: a L<Paws::Glacier::ArchiveCreationOutput> instance

You call this operation to inform Amazon Glacier that all the archive
parts have been uploaded and that Amazon Glacier can now assemble the
archive from the uploaded parts. After assembling and saving the
archive to the vault, Amazon Glacier returns the URI path of the newly
created archive resource. Using the URI path, you can then access the
archive. After you upload an archive, you should save the archive ID
returned to retrieve the archive at a later point. You can also get the
vault inventory to obtain a list of archive IDs in a vault. For more
information, see InitiateJob.

In the request, you must include the computed SHA256 tree hash of the
entire archive you have uploaded. For information about computing a
SHA256 tree hash, see Computing Checksums
(http://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html).
On the server side, Amazon Glacier also constructs the SHA256 tree hash
of the assembled archive. If the values match, Amazon Glacier saves the
archive to the vault; otherwise, it returns an error, and the operation
fails. The ListParts operation returns a list of parts uploaded for a
specific multipart upload. It includes checksum information for each
uploaded part that can be used to debug a bad checksum issue.

Additionally, Amazon Glacier also checks for any missing content ranges
when assembling the archive, if missing content ranges are found,
Amazon Glacier returns an error and the operation fails.

Complete Multipart Upload is an idempotent operation. After your first
successful complete multipart upload, if you call the operation again
within a short period, the operation will succeed and return the same
archive ID. This is useful in the event you experience a network issue
that causes an aborted connection or receive a 500 server error, in
which case you can repeat your Complete Multipart Upload request and
get the same archive ID without creating duplicate archives. Note,
however, that after the multipart upload completes, you cannot call the
List Parts operation and the multipart upload will not appear in List
Multipart Uploads response, even if idempotent complete is possible.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see Access Control
Using AWS Identity and Access Management (IAM)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

For conceptual information and underlying REST API, see Uploading Large
Archives in Parts (Multipart Upload)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html)
and Complete Multipart Upload
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-complete-upload.html)
in the I<Amazon Glacier Developer Guide>.


=head2 CompleteVaultLock

=over

=item AccountId => Str

=item LockId => Str

=item VaultName => Str


=back

Each argument is described in detail in: L<Paws::Glacier::CompleteVaultLock>

Returns: nothing

This operation completes the vault locking process by transitioning the
vault lock from the C<InProgress> state to the C<Locked> state, which
causes the vault lock policy to become unchangeable. A vault lock is
put into the C<InProgress> state by calling InitiateVaultLock. You can
obtain the state of the vault lock by calling GetVaultLock. For more
information about the vault locking process, Amazon Glacier Vault Lock
(http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html).

This operation is idempotent. This request is always successful if the
vault lock is in the C<Locked> state and the provided lock ID matches
the lock ID originally used to lock the vault.

If an invalid lock ID is passed in the request when the vault lock is
in the C<Locked> state, the operation returns an
C<AccessDeniedException> error. If an invalid lock ID is passed in the
request when the vault lock is in the C<InProgress> state, the
operation throws an C<InvalidParameter> error.


=head2 CreateVault

=over

=item AccountId => Str

=item VaultName => Str


=back

Each argument is described in detail in: L<Paws::Glacier::CreateVault>

Returns: a L<Paws::Glacier::CreateVaultOutput> instance

This operation creates a new vault with the specified name. The name of
the vault must be unique within a region for an AWS account. You can
create up to 1,000 vaults per account. If you need to create more
vaults, contact Amazon Glacier.

You must use the following guidelines when naming a vault.

=over

=item *

Names can be between 1 and 255 characters long.

=item *

Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen),
and '.' (period).

=back

This operation is idempotent.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see Access Control
Using AWS Identity and Access Management (IAM)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

For conceptual information and underlying REST API, see Creating a
Vault in Amazon Glacier
(http://docs.aws.amazon.com/amazonglacier/latest/dev/creating-vaults.html)
and Create Vault
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-put.html)
in the I<Amazon Glacier Developer Guide>.


=head2 DeleteArchive

=over

=item AccountId => Str

=item ArchiveId => Str

=item VaultName => Str


=back

Each argument is described in detail in: L<Paws::Glacier::DeleteArchive>

Returns: nothing

This operation deletes an archive from a vault. Subsequent requests to
initiate a retrieval of this archive will fail. Archive retrievals that
are in progress for this archive ID may or may not succeed according to
the following scenarios:

=over

=item *

If the archive retrieval job is actively preparing the data for
download when Amazon Glacier receives the delete archive request, the
archival retrieval operation might fail.

=item *

If the archive retrieval job has successfully prepared the archive for
download when Amazon Glacier receives the delete archive request, you
will be able to download the output.

=back

This operation is idempotent. Attempting to delete an already-deleted
archive does not result in an error.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see Access Control
Using AWS Identity and Access Management (IAM)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

For conceptual information and underlying REST API, see Deleting an
Archive in Amazon Glacier
(http://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-an-archive.html)
and Delete Archive
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html)
in the I<Amazon Glacier Developer Guide>.


=head2 DeleteVault

=over

=item AccountId => Str

=item VaultName => Str


=back

Each argument is described in detail in: L<Paws::Glacier::DeleteVault>

Returns: nothing

This operation deletes a vault. Amazon Glacier will delete a vault only
if there are no archives in the vault as of the last inventory and
there have been no writes to the vault since the last inventory. If
either of these conditions is not satisfied, the vault deletion fails
(that is, the vault is not removed) and Amazon Glacier returns an
error. You can use DescribeVault to return the number of archives in a
vault, and you can use Initiate a Job (POST jobs)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html)
to initiate a new inventory retrieval for a vault. The inventory
contains the archive IDs you use to delete archives using Delete
Archive (DELETE archive)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html).

This operation is idempotent.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see Access Control
Using AWS Identity and Access Management (IAM)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

For conceptual information and underlying REST API, see Deleting a
Vault in Amazon Glacier
(http://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-vaults.html)
and Delete Vault
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-delete.html)
in the I<Amazon Glacier Developer Guide>.


=head2 DeleteVaultAccessPolicy

=over

=item AccountId => Str

=item VaultName => Str


=back

Each argument is described in detail in: L<Paws::Glacier::DeleteVaultAccessPolicy>

Returns: nothing

This operation deletes the access policy associated with the specified
vault. The operation is eventually consistent; that is, it might take
some time for Amazon Glacier to completely remove the access policy,
and you might still see the effect of the policy for a short time after
you send the delete request.

This operation is idempotent. You can invoke delete multiple times,
even if there is no policy associated with the vault. For more
information about vault access policies, see Amazon Glacier Access
Control with Vault Access Policies
(http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html).


=head2 DeleteVaultNotifications

=over

=item AccountId => Str

=item VaultName => Str


=back

Each argument is described in detail in: L<Paws::Glacier::DeleteVaultNotifications>

Returns: nothing

This operation deletes the notification configuration set for a vault.
The operation is eventually consistent; that is, it might take some
time for Amazon Glacier to completely disable the notifications and you
might still receive some notifications for a short time after you send
the delete request.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see Access Control
Using AWS Identity and Access Management (IAM)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

For conceptual information and underlying REST API, see Configuring
Vault Notifications in Amazon Glacier
(http://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html)
and Delete Vault Notification Configuration
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-delete.html)
in the Amazon Glacier Developer Guide.


=head2 DescribeJob

=over

=item AccountId => Str

=item JobId => Str

=item VaultName => Str


=back

Each argument is described in detail in: L<Paws::Glacier::DescribeJob>

Returns: a L<Paws::Glacier::GlacierJobDescription> instance

This operation returns information about a job you previously
initiated, including the job initiation date, the user who initiated
the job, the job status code/message and the Amazon SNS topic to notify
after Amazon Glacier completes the job. For more information about
initiating a job, see InitiateJob.

This operation enables you to check the status of your job. However, it
is strongly recommended that you set up an Amazon SNS topic and specify
it in your initiate job request so that Amazon Glacier can notify the
topic after it completes the job.

A job ID will not expire for at least 24 hours after Amazon Glacier
completes the job.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see Access Control
Using AWS Identity and Access Management (IAM)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

For more information about using this operation, see the documentation
for the underlying REST API Describe Job
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-describe-job-get.html)
in the I<Amazon Glacier Developer Guide>.


=head2 DescribeVault

=over

=item AccountId => Str

=item VaultName => Str


=back

Each argument is described in detail in: L<Paws::Glacier::DescribeVault>

Returns: a L<Paws::Glacier::DescribeVaultOutput> instance

This operation returns information about a vault, including the vault's
Amazon Resource Name (ARN), the date the vault was created, the number
of archives it contains, and the total size of all the archives in the
vault. The number of archives and their total size are as of the last
inventory generation. This means that if you add or remove an archive
from a vault, and then immediately use Describe Vault, the change in
contents will not be immediately reflected. If you want to retrieve the
latest inventory of the vault, use InitiateJob. Amazon Glacier
generates vault inventories approximately daily. For more information,
see Downloading a Vault Inventory in Amazon Glacier
(http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html).

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see Access Control
Using AWS Identity and Access Management (IAM)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

For conceptual information and underlying REST API, see Retrieving
Vault Metadata in Amazon Glacier
(http://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html)
and Describe Vault
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-get.html)
in the I<Amazon Glacier Developer Guide>.


=head2 GetDataRetrievalPolicy

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Glacier::GetDataRetrievalPolicy>

Returns: a L<Paws::Glacier::GetDataRetrievalPolicyOutput> instance

This operation returns the current data retrieval policy for the
account and region specified in the GET request. For more information
about data retrieval policies, see Amazon Glacier Data Retrieval
Policies
(http://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html).


=head2 GetJobOutput

=over

=item AccountId => Str

=item JobId => Str

=item VaultName => Str

=item [Range => Str]


=back

Each argument is described in detail in: L<Paws::Glacier::GetJobOutput>

Returns: a L<Paws::Glacier::GetJobOutputOutput> instance

This operation downloads the output of the job you initiated using
InitiateJob. Depending on the job type you specified when you initiated
the job, the output will be either the content of an archive or a vault
inventory.

You can download all the job output or download a portion of the output
by specifying a byte range. In the case of an archive retrieval job,
depending on the byte range you specify, Amazon Glacier returns the
checksum for the portion of the data. You can compute the checksum on
the client and verify that the values match to ensure the portion you
downloaded is the correct data.

A job ID will not expire for at least 24 hours after Amazon Glacier
completes the job. That a byte range. For both archive and inventory
retrieval jobs, you should verify the downloaded size against the size
returned in the headers from the B<Get Job Output> response.

For archive retrieval jobs, you should also verify that the size is
what you expected. If you download a portion of the output, the
expected size is based on the range of bytes you specified. For
example, if you specify a range of C<bytes=0-1048575>, you should
verify your download size is 1,048,576 bytes. If you download an entire
archive, the expected size is the size of the archive when you uploaded
it to Amazon Glacier The expected size is also returned in the headers
from the B<Get Job Output> response.

In the case of an archive retrieval job, depending on the byte range
you specify, Amazon Glacier returns the checksum for the portion of the
data. To ensure the portion you downloaded is the correct data, compute
the checksum on the client, verify that the values match, and verify
that the size is what you expected.

A job ID does not expire for at least 24 hours after Amazon Glacier
completes the job. That is, you can download the job output within the
24 hours period after Amazon Glacier completes the job.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see Access Control
Using AWS Identity and Access Management (IAM)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

For conceptual information and the underlying REST API, see Downloading
a Vault Inventory
(http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html),
Downloading an Archive
(http://docs.aws.amazon.com/amazonglacier/latest/dev/downloading-an-archive.html),
and Get Job Output
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-job-output-get.html)


=head2 GetVaultAccessPolicy

=over

=item AccountId => Str

=item VaultName => Str


=back

Each argument is described in detail in: L<Paws::Glacier::GetVaultAccessPolicy>

Returns: a L<Paws::Glacier::GetVaultAccessPolicyOutput> instance

This operation retrieves the C<access-policy> subresource set on the
vault; for more information on setting this subresource, see Set Vault
Access Policy (PUT access-policy)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-SetVaultAccessPolicy.html).
If there is no access policy set on the vault, the operation returns a
C<404 Not found> error. For more information about vault access
policies, see Amazon Glacier Access Control with Vault Access Policies
(http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html).


=head2 GetVaultLock

=over

=item AccountId => Str

=item VaultName => Str


=back

Each argument is described in detail in: L<Paws::Glacier::GetVaultLock>

Returns: a L<Paws::Glacier::GetVaultLockOutput> instance

This operation retrieves the following attributes from the
C<lock-policy> subresource set on the specified vault:

=over

=item *

The vault lock policy set on the vault.

=item *

The state of the vault lock, which is either C<InProgess> or C<Locked>.

=item *

When the lock ID expires. The lock ID is used to complete the vault
locking process.

=item *

When the vault lock was initiated and put into the C<InProgress> state.

=back

A vault lock is put into the C<InProgress> state by calling
InitiateVaultLock. A vault lock is put into the C<Locked> state by
calling CompleteVaultLock. You can abort the vault locking process by
calling AbortVaultLock. For more information about the vault locking
process, Amazon Glacier Vault Lock
(http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html).

If there is no vault lock policy set on the vault, the operation
returns a C<404 Not found> error. For more information about vault lock
policies, Amazon Glacier Access Control with Vault Lock Policies
(http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html).


=head2 GetVaultNotifications

=over

=item AccountId => Str

=item VaultName => Str


=back

Each argument is described in detail in: L<Paws::Glacier::GetVaultNotifications>

Returns: a L<Paws::Glacier::GetVaultNotificationsOutput> instance

This operation retrieves the C<notification-configuration> subresource
of the specified vault.

For information about setting a notification configuration on a vault,
see SetVaultNotifications. If a notification configuration for a vault
is not set, the operation returns a C<404 Not Found> error. For more
information about vault notifications, see Configuring Vault
Notifications in Amazon Glacier
(http://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html).

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see Access Control
Using AWS Identity and Access Management (IAM)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

For conceptual information and underlying REST API, see Configuring
Vault Notifications in Amazon Glacier
(http://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html)
and Get Vault Notification Configuration
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-get.html)
in the I<Amazon Glacier Developer Guide>.


=head2 InitiateJob

=over

=item AccountId => Str

=item VaultName => Str

=item [JobParameters => L<Paws::Glacier::JobParameters>]


=back

Each argument is described in detail in: L<Paws::Glacier::InitiateJob>

Returns: a L<Paws::Glacier::InitiateJobOutput> instance

This operation initiates a job of the specified type, which can be a
select, an archival retrieval, or a vault retrieval. For more
information about using this operation, see the documentation for the
underlying REST API Initiate a Job
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html).


=head2 InitiateMultipartUpload

=over

=item AccountId => Str

=item VaultName => Str

=item [ArchiveDescription => Str]

=item [PartSize => Str]


=back

Each argument is described in detail in: L<Paws::Glacier::InitiateMultipartUpload>

Returns: a L<Paws::Glacier::InitiateMultipartUploadOutput> instance

This operation initiates a multipart upload. Amazon Glacier creates a
multipart upload resource and returns its ID in the response. The
multipart upload ID is used in subsequent requests to upload parts of
an archive (see UploadMultipartPart).

When you initiate a multipart upload, you specify the part size in
number of bytes. The part size must be a megabyte (1024 KB) multiplied
by a power of 2-for example, 1048576 (1 MB), 2097152 (2 MB), 4194304 (4
MB), 8388608 (8 MB), and so on. The minimum allowable part size is 1
MB, and the maximum is 4 GB.

Every part you upload to this resource (see UploadMultipartPart),
except the last one, must have the same size. The last one can be the
same size or smaller. For example, suppose you want to upload a 16.2 MB
file. If you initiate the multipart upload with a part size of 4 MB,
you will upload four parts of 4 MB each and one part of 0.2 MB.

You don't need to know the size of the archive when you start a
multipart upload because Amazon Glacier does not require you to specify
the overall archive size.

After you complete the multipart upload, Amazon Glacier removes the
multipart upload resource referenced by the ID. Amazon Glacier also
removes the multipart upload resource if you cancel the multipart
upload or it may be removed if there is no activity for a period of 24
hours.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see Access Control
Using AWS Identity and Access Management (IAM)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

For conceptual information and underlying REST API, see Uploading Large
Archives in Parts (Multipart Upload)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html)
and Initiate Multipart Upload
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-initiate-upload.html)
in the I<Amazon Glacier Developer Guide>.


=head2 InitiateVaultLock

=over

=item AccountId => Str

=item VaultName => Str

=item [Policy => L<Paws::Glacier::VaultLockPolicy>]


=back

Each argument is described in detail in: L<Paws::Glacier::InitiateVaultLock>

Returns: a L<Paws::Glacier::InitiateVaultLockOutput> instance

This operation initiates the vault locking process by doing the
following:

=over

=item *

Installing a vault lock policy on the specified vault.

=item *

Setting the lock state of vault lock to C<InProgress>.

=item *

Returning a lock ID, which is used to complete the vault locking
process.

=back

You can set one vault lock policy for each vault and this policy can be
up to 20 KB in size. For more information about vault lock policies,
see Amazon Glacier Access Control with Vault Lock Policies
(http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html).

You must complete the vault locking process within 24 hours after the
vault lock enters the C<InProgress> state. After the 24 hour window
ends, the lock ID expires, the vault automatically exits the
C<InProgress> state, and the vault lock policy is removed from the
vault. You call CompleteVaultLock to complete the vault locking process
by setting the state of the vault lock to C<Locked>.

After a vault lock is in the C<Locked> state, you cannot initiate a new
vault lock for the vault.

You can abort the vault locking process by calling AbortVaultLock. You
can get the state of the vault lock by calling GetVaultLock. For more
information about the vault locking process, Amazon Glacier Vault Lock
(http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html).

If this operation is called when the vault lock is in the C<InProgress>
state, the operation returns an C<AccessDeniedException> error. When
the vault lock is in the C<InProgress> state you must call
AbortVaultLock before you can initiate a new vault lock policy.


=head2 ListJobs

=over

=item AccountId => Str

=item VaultName => Str

=item [Completed => Str]

=item [Limit => Str]

=item [Marker => Str]

=item [Statuscode => Str]


=back

Each argument is described in detail in: L<Paws::Glacier::ListJobs>

Returns: a L<Paws::Glacier::ListJobsOutput> instance

This operation lists jobs for a vault, including jobs that are
in-progress and jobs that have recently finished. The List Job
operation returns a list of these jobs sorted by job initiation time.

Amazon Glacier retains recently completed jobs for a period before
deleting them; however, it eventually removes completed jobs. The
output of completed jobs can be retrieved. Retaining completed jobs for
a period of time after they have completed enables you to get a job
output in the event you miss the job completion notification or your
first attempt to download it fails. For example, suppose you start an
archive retrieval job to download an archive. After the job completes,
you start to download the archive but encounter a network error. In
this scenario, you can retry and download the archive while the job
exists.

The List Jobs operation supports pagination. You should always check
the response C<Marker> field. If there are no more jobs to list, the
C<Marker> field is set to C<null>. If there are more jobs to list, the
C<Marker> field is set to a non-null value, which you can use to
continue the pagination of the list. To return a list of jobs that
begins at a specific job, set the marker request parameter to the
C<Marker> value for that job that you obtained from a previous List
Jobs request.

You can set a maximum limit for the number of jobs returned in the
response by specifying the C<limit> parameter in the request. The
default limit is 50. The number of jobs returned might be fewer than
the limit, but the number of returned jobs never exceeds the limit.

Additionally, you can filter the jobs list returned by specifying the
optional C<statuscode> parameter or C<completed> parameter, or both.
Using the C<statuscode> parameter, you can specify to return only jobs
that match either the C<InProgress>, C<Succeeded>, or C<Failed> status.
Using the C<completed> parameter, you can specify to return only jobs
that were completed (C<true>) or jobs that were not completed
(C<false>).

For more information about using this operation, see the documentation
for the underlying REST API List Jobs
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-jobs-get.html).


=head2 ListMultipartUploads

=over

=item AccountId => Str

=item VaultName => Str

=item [Limit => Str]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::Glacier::ListMultipartUploads>

Returns: a L<Paws::Glacier::ListMultipartUploadsOutput> instance

This operation lists in-progress multipart uploads for the specified
vault. An in-progress multipart upload is a multipart upload that has
been initiated by an InitiateMultipartUpload request, but has not yet
been completed or aborted. The list returned in the List Multipart
Upload response has no guaranteed order.

The List Multipart Uploads operation supports pagination. By default,
this operation returns up to 50 multipart uploads in the response. You
should always check the response for a C<marker> at which to continue
the list; if there are no more items the C<marker> is C<null>. To
return a list of multipart uploads that begins at a specific upload,
set the C<marker> request parameter to the value you obtained from a
previous List Multipart Upload request. You can also limit the number
of uploads returned in the response by specifying the C<limit>
parameter in the request.

Note the difference between this operation and listing parts
(ListParts). The List Multipart Uploads operation lists all multipart
uploads for a vault and does not require a multipart upload ID. The
List Parts operation requires a multipart upload ID since parts are
associated with a single upload.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see Access Control
Using AWS Identity and Access Management (IAM)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

For conceptual information and the underlying REST API, see Working
with Archives in Amazon Glacier
(http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html)
and List Multipart Uploads
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-uploads.html)
in the I<Amazon Glacier Developer Guide>.


=head2 ListParts

=over

=item AccountId => Str

=item UploadId => Str

=item VaultName => Str

=item [Limit => Str]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::Glacier::ListParts>

Returns: a L<Paws::Glacier::ListPartsOutput> instance

This operation lists the parts of an archive that have been uploaded in
a specific multipart upload. You can make this request at any time
during an in-progress multipart upload before you complete the upload
(see CompleteMultipartUpload. List Parts returns an error for completed
uploads. The list returned in the List Parts response is sorted by part
range.

The List Parts operation supports pagination. By default, this
operation returns up to 50 uploaded parts in the response. You should
always check the response for a C<marker> at which to continue the
list; if there are no more items the C<marker> is C<null>. To return a
list of parts that begins at a specific part, set the C<marker> request
parameter to the value you obtained from a previous List Parts request.
You can also limit the number of parts returned in the response by
specifying the C<limit> parameter in the request.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see Access Control
Using AWS Identity and Access Management (IAM)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

For conceptual information and the underlying REST API, see Working
with Archives in Amazon Glacier
(http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html)
and List Parts
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-parts.html)
in the I<Amazon Glacier Developer Guide>.


=head2 ListProvisionedCapacity

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Glacier::ListProvisionedCapacity>

Returns: a L<Paws::Glacier::ListProvisionedCapacityOutput> instance

This operation lists the provisioned capacity units for the specified
AWS account.


=head2 ListTagsForVault

=over

=item AccountId => Str

=item VaultName => Str


=back

Each argument is described in detail in: L<Paws::Glacier::ListTagsForVault>

Returns: a L<Paws::Glacier::ListTagsForVaultOutput> instance

This operation lists all the tags attached to a vault. The operation
returns an empty map if there are no tags. For more information about
tags, see Tagging Amazon Glacier Resources
(http://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html).


=head2 ListVaults

=over

=item AccountId => Str

=item [Limit => Str]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::Glacier::ListVaults>

Returns: a L<Paws::Glacier::ListVaultsOutput> instance

This operation lists all vaults owned by the calling user's account.
The list returned in the response is ASCII-sorted by vault name.

By default, this operation returns up to 10 items. If there are more
vaults to list, the response C<marker> field contains the vault Amazon
Resource Name (ARN) at which to continue the list with a new List
Vaults request; otherwise, the C<marker> field is C<null>. To return a
list of vaults that begins at a specific vault, set the C<marker>
request parameter to the vault ARN you obtained from a previous List
Vaults request. You can also limit the number of vaults returned in the
response by specifying the C<limit> parameter in the request.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see Access Control
Using AWS Identity and Access Management (IAM)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

For conceptual information and underlying REST API, see Retrieving
Vault Metadata in Amazon Glacier
(http://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html)
and List Vaults
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vaults-get.html)
in the I<Amazon Glacier Developer Guide>.


=head2 PurchaseProvisionedCapacity

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Glacier::PurchaseProvisionedCapacity>

Returns: a L<Paws::Glacier::PurchaseProvisionedCapacityOutput> instance

This operation purchases a provisioned capacity unit for an AWS
account.


=head2 RemoveTagsFromVault

=over

=item AccountId => Str

=item VaultName => Str

=item [TagKeys => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Glacier::RemoveTagsFromVault>

Returns: nothing

This operation removes one or more tags from the set of tags attached
to a vault. For more information about tags, see Tagging Amazon Glacier
Resources
(http://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html).
This operation is idempotent. The operation will be successful, even if
there are no tags attached to the vault.


=head2 SetDataRetrievalPolicy

=over

=item AccountId => Str

=item [Policy => L<Paws::Glacier::DataRetrievalPolicy>]


=back

Each argument is described in detail in: L<Paws::Glacier::SetDataRetrievalPolicy>

Returns: nothing

This operation sets and then enacts a data retrieval policy in the
region specified in the PUT request. You can set one policy per region
for an AWS account. The policy is enacted within a few minutes of a
successful PUT operation.

The set policy operation does not affect retrieval jobs that were in
progress before the policy was enacted. For more information about data
retrieval policies, see Amazon Glacier Data Retrieval Policies
(http://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html).


=head2 SetVaultAccessPolicy

=over

=item AccountId => Str

=item VaultName => Str

=item [Policy => L<Paws::Glacier::VaultAccessPolicy>]


=back

Each argument is described in detail in: L<Paws::Glacier::SetVaultAccessPolicy>

Returns: nothing

This operation configures an access policy for a vault and will
overwrite an existing policy. To configure a vault access policy, send
a PUT request to the C<access-policy> subresource of the vault. An
access policy is specific to a vault and is also called a vault
subresource. You can set one access policy per vault and the policy can
be up to 20 KB in size. For more information about vault access
policies, see Amazon Glacier Access Control with Vault Access Policies
(http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html).


=head2 SetVaultNotifications

=over

=item AccountId => Str

=item VaultName => Str

=item [VaultNotificationConfig => L<Paws::Glacier::VaultNotificationConfig>]


=back

Each argument is described in detail in: L<Paws::Glacier::SetVaultNotifications>

Returns: nothing

This operation configures notifications that will be sent when specific
events happen to a vault. By default, you don't get any notifications.

To configure vault notifications, send a PUT request to the
C<notification-configuration> subresource of the vault. The request
should include a JSON document that provides an Amazon SNS topic and
specific events for which you want Amazon Glacier to send notifications
to the topic.

Amazon SNS topics must grant permission to the vault to be allowed to
publish notifications to the topic. You can configure a vault to
publish a notification for the following vault events:

=over

=item *

B<ArchiveRetrievalCompleted> This event occurs when a job that was
initiated for an archive retrieval is completed (InitiateJob). The
status of the completed job can be "Succeeded" or "Failed". The
notification sent to the SNS topic is the same output as returned from
DescribeJob.

=item *

B<InventoryRetrievalCompleted> This event occurs when a job that was
initiated for an inventory retrieval is completed (InitiateJob). The
status of the completed job can be "Succeeded" or "Failed". The
notification sent to the SNS topic is the same output as returned from
DescribeJob.

=back

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see Access Control
Using AWS Identity and Access Management (IAM)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

For conceptual information and underlying REST API, see Configuring
Vault Notifications in Amazon Glacier
(http://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html)
and Set Vault Notification Configuration
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-put.html)
in the I<Amazon Glacier Developer Guide>.


=head2 UploadArchive

=over

=item AccountId => Str

=item VaultName => Str

=item [ArchiveDescription => Str]

=item [Body => Str]

=item [Checksum => Str]


=back

Each argument is described in detail in: L<Paws::Glacier::UploadArchive>

Returns: a L<Paws::Glacier::ArchiveCreationOutput> instance

This operation adds an archive to a vault. This is a synchronous
operation, and for a successful upload, your data is durably persisted.
Amazon Glacier returns the archive ID in the C<x-amz-archive-id> header
of the response.

You must use the archive ID to access your data in Amazon Glacier.
After you upload an archive, you should save the archive ID returned so
that you can retrieve or delete the archive later. Besides saving the
archive ID, you can also index it and give it a friendly name to allow
for better searching. You can also use the optional archive description
field to specify how the archive is referred to in an external index of
archives, such as you might create in Amazon DynamoDB. You can also get
the vault inventory to obtain a list of archive IDs in a vault. For
more information, see InitiateJob.

You must provide a SHA256 tree hash of the data you are uploading. For
information about computing a SHA256 tree hash, see Computing Checksums
(http://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html).

You can optionally specify an archive description of up to 1,024
printable ASCII characters. You can get the archive description when
you either retrieve the archive or get the vault inventory. For more
information, see InitiateJob. Amazon Glacier does not interpret the
description in any way. An archive description does not need to be
unique. You cannot use the description to retrieve or sort the archive
list.

Archives are immutable. After you upload an archive, you cannot edit
the archive or its description.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see Access Control
Using AWS Identity and Access Management (IAM)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

For conceptual information and underlying REST API, see Uploading an
Archive in Amazon Glacier
(http://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-an-archive.html)
and Upload Archive
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html)
in the I<Amazon Glacier Developer Guide>.


=head2 UploadMultipartPart

=over

=item AccountId => Str

=item UploadId => Str

=item VaultName => Str

=item [Body => Str]

=item [Checksum => Str]

=item [Range => Str]


=back

Each argument is described in detail in: L<Paws::Glacier::UploadMultipartPart>

Returns: a L<Paws::Glacier::UploadMultipartPartOutput> instance

This operation uploads a part of an archive. You can upload archive
parts in any order. You can also upload them in parallel. You can
upload up to 10,000 parts for a multipart upload.

Amazon Glacier rejects your upload part request if any of the following
conditions is true:

=over

=item *

B<SHA256 tree hash does not match>To ensure that part data is not
corrupted in transmission, you compute a SHA256 tree hash of the part
and include it in your request. Upon receiving the part data, Amazon
Glacier also computes a SHA256 tree hash. If these hash values don't
match, the operation fails. For information about computing a SHA256
tree hash, see Computing Checksums
(http://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html).

=item *

B<Part size does not match>The size of each part except the last must
match the size specified in the corresponding InitiateMultipartUpload
request. The size of the last part must be the same size as, or smaller
than, the specified size.

If you upload a part whose size is smaller than the part size you
specified in your initiate multipart upload request and that part is
not the last part, then the upload part request will succeed. However,
the subsequent Complete Multipart Upload request will fail.

=item *

B<Range does not align>The byte range value in the request does not
align with the part size specified in the corresponding initiate
request. For example, if you specify a part size of 4194304 bytes (4
MB), then 0 to 4194303 bytes (4 MB - 1) and 4194304 (4 MB) to 8388607
(8 MB - 1) are valid part ranges. However, if you set a range value of
2 MB to 6 MB, the range does not align with the part size and the
upload will fail.

=back

This operation is idempotent. If you upload the same part multiple
times, the data included in the most recent request overwrites the
previously uploaded data.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see Access Control
Using AWS Identity and Access Management (IAM)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

For conceptual information and underlying REST API, see Uploading Large
Archives in Parts (Multipart Upload)
(http://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html)
and Upload Part
(http://docs.aws.amazon.com/amazonglacier/latest/dev/api-upload-part.html)
in the I<Amazon Glacier Developer Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllJobs(sub { },AccountId => Str, VaultName => Str, [Completed => Str, Limit => Str, Marker => Str, Statuscode => Str])

=head2 ListAllJobs(AccountId => Str, VaultName => Str, [Completed => Str, Limit => Str, Marker => Str, Statuscode => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - JobList, passing the object as the first parameter, and the string 'JobList' as the second parameter 

If not, it will return a a L<Paws::Glacier::ListJobsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMultipartUploads(sub { },AccountId => Str, VaultName => Str, [Limit => Str, Marker => Str])

=head2 ListAllMultipartUploads(AccountId => Str, VaultName => Str, [Limit => Str, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UploadsList, passing the object as the first parameter, and the string 'UploadsList' as the second parameter 

If not, it will return a a L<Paws::Glacier::ListMultipartUploadsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllParts(sub { },AccountId => Str, UploadId => Str, VaultName => Str, [Limit => Str, Marker => Str])

=head2 ListAllParts(AccountId => Str, UploadId => Str, VaultName => Str, [Limit => Str, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Parts, passing the object as the first parameter, and the string 'Parts' as the second parameter 

If not, it will return a a L<Paws::Glacier::ListPartsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVaults(sub { },AccountId => Str, [Limit => Str, Marker => Str])

=head2 ListAllVaults(AccountId => Str, [Limit => Str, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VaultList, passing the object as the first parameter, and the string 'VaultList' as the second parameter 

If not, it will return a a L<Paws::Glacier::ListVaultsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

