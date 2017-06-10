package Paws::WorkDocs;
  use Moose;
  sub service { 'workdocs' }
  sub version { '2016-05-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';

  
  sub AbortDocumentVersionUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::AbortDocumentVersionUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ActivateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::ActivateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddResourcePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::AddResourcePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateComment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::CreateComment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCustomMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::CreateCustomMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFolder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::CreateFolder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLabels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::CreateLabels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNotificationSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::CreateNotificationSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeactivateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DeactivateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteComment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DeleteComment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCustomMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DeleteCustomMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DeleteDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFolder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DeleteFolder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFolderContents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DeleteFolderContents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLabels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DeleteLabels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNotificationSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DeleteNotificationSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeComments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DescribeComments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDocumentVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DescribeDocumentVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFolderContents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DescribeFolderContents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNotificationSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DescribeNotificationSubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResourcePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DescribeResourcePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DescribeUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::GetDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDocumentPath {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::GetDocumentPath', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDocumentVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::GetDocumentVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFolder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::GetFolder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFolderPath {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::GetFolderPath', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InitiateDocumentVersionUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::InitiateDocumentVersionUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveAllResourcePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::RemoveAllResourcePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveResourcePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::RemoveResourcePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::UpdateDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDocumentVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::UpdateDocumentVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFolder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::UpdateFolder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::UpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllDocumentVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDocumentVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $result = $self->DescribeDocumentVersions(@_, Marker => $result->Marker);
        push @{ $result->DocumentVersions }, @{ $next_result->DocumentVersions };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeDocumentVersions(@_, Marker => $result->Marker);
        $callback->($_ => 'DocumentVersions') foreach (@{ $result->DocumentVersions });
      }
    }

    return undef
  }
  sub DescribeAllFolderContents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFolderContents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $result = $self->DescribeFolderContents(@_, Marker => $result->Marker);
        push @{ $result->Folders }, @{ $next_result->Folders };
        push @{ $result->Documents }, @{ $next_result->Documents };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeFolderContents(@_, Marker => $result->Marker);
        $callback->($_ => 'Folders') foreach (@{ $result->Folders });
        $callback->($_ => 'Documents') foreach (@{ $result->Documents });
      }
    }

    return undef
  }
  sub DescribeAllUsers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeUsers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $result = $self->DescribeUsers(@_, Marker => $result->Marker);
        push @{ $result->Users }, @{ $next_result->Users };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeUsers(@_, Marker => $result->Marker);
        $callback->($_ => 'Users') foreach (@{ $result->Users });
      }
    }

    return undef
  }


  sub operations { qw/AbortDocumentVersionUpload ActivateUser AddResourcePermissions CreateComment CreateCustomMetadata CreateFolder CreateLabels CreateNotificationSubscription CreateUser DeactivateUser DeleteComment DeleteCustomMetadata DeleteDocument DeleteFolder DeleteFolderContents DeleteLabels DeleteNotificationSubscription DeleteUser DescribeComments DescribeDocumentVersions DescribeFolderContents DescribeNotificationSubscriptions DescribeResourcePermissions DescribeUsers GetDocument GetDocumentPath GetDocumentVersion GetFolder GetFolderPath InitiateDocumentVersionUpload RemoveAllResourcePermissions RemoveResourcePermission UpdateDocument UpdateDocumentVersion UpdateFolder UpdateUser / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs - Perl Interface to AWS Amazon WorkDocs

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('WorkDocs');
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

The WorkDocs API is designed for the following use cases:

=over

=item *

File Migration: File migration applications are supported for users who
want to migrate their files from an on-premise or off-premise file
system or service. Users can insert files into a user directory
structure, as well as allow for basic metadata changes, such as
modifications to the permissions of files.

=item *

Security: Support security applications are supported for users who
have additional security needs, such as anti-virus or data loss
prevention. The APIs, in conjunction with Amazon CloudTrail, allow
these applications to detect when changes occur in Amazon WorkDocs, so
the application can take the necessary actions and replace the target
file. The application can also choose to email the user if the target
file violates the policy.

=item *

eDiscovery/Analytics: General administrative applications are
supported, such as eDiscovery and analytics. These applications can
choose to mimic and/or record the actions in an Amazon WorkDocs site,
in conjunction with Amazon CloudTrails, to replicate data for
eDiscovery, backup, or analytical applications.

=back

All Amazon WorkDocs APIs are Amazon authenticated, certificate-signed
APIs. They not only require the use of the AWS SDK, but also allow for
the exclusive use of IAM users and roles to help facilitate access,
trust, and permission policies. By creating a role and allowing an IAM
user to access the Amazon WorkDocs site, the IAM user gains full
administrative visibility into the entire Amazon WorkDocs site (or as
set in the IAM policy). This includes, but is not limited to, the
ability to modify file permissions and upload any file to any user.
This allows developers to perform the three use cases above, as well as
give users the ability to grant access on a selective basis using the
IAM model.

=head1 METHODS

=head2 AbortDocumentVersionUpload(DocumentId => Str, VersionId => Str, [AuthenticationToken => Str])

Each argument is described in detail in: L<Paws::WorkDocs::AbortDocumentVersionUpload>

Returns: nothing

  Aborts the upload of the specified document version that was previously
initiated by InitiateDocumentVersionUpload. The client should make this
call only when it no longer intends to upload the document version, or
fails to do so.


=head2 ActivateUser(UserId => Str, [AuthenticationToken => Str])

Each argument is described in detail in: L<Paws::WorkDocs::ActivateUser>

Returns: a L<Paws::WorkDocs::ActivateUserResponse> instance

  Activates the specified user. Only active users can access Amazon
WorkDocs.


=head2 AddResourcePermissions(Principals => ArrayRef[L<Paws::WorkDocs::SharePrincipal>], ResourceId => Str, [AuthenticationToken => Str])

Each argument is described in detail in: L<Paws::WorkDocs::AddResourcePermissions>

Returns: a L<Paws::WorkDocs::AddResourcePermissionsResponse> instance

  Creates a set of permissions for the specified folder or document. The
resource permissions are overwritten if the principals already have
different permissions.


=head2 CreateComment(DocumentId => Str, Text => Str, VersionId => Str, [AuthenticationToken => Str, NotifyCollaborators => Bool, ParentId => Str, ThreadId => Str, Visibility => Str])

Each argument is described in detail in: L<Paws::WorkDocs::CreateComment>

Returns: a L<Paws::WorkDocs::CreateCommentResponse> instance

  Adds a new comment to the specified document version.


=head2 CreateCustomMetadata(CustomMetadata => L<Paws::WorkDocs::CustomMetadataMap>, ResourceId => Str, [AuthenticationToken => Str, VersionId => Str])

Each argument is described in detail in: L<Paws::WorkDocs::CreateCustomMetadata>

Returns: a L<Paws::WorkDocs::CreateCustomMetadataResponse> instance

  Adds one or more custom properties to the specified resource (a folder,
document, or version).


=head2 CreateFolder(ParentFolderId => Str, [AuthenticationToken => Str, Name => Str])

Each argument is described in detail in: L<Paws::WorkDocs::CreateFolder>

Returns: a L<Paws::WorkDocs::CreateFolderResponse> instance

  Creates a folder with the specified name and parent folder.


=head2 CreateLabels(Labels => ArrayRef[Str|Undef], ResourceId => Str, [AuthenticationToken => Str])

Each argument is described in detail in: L<Paws::WorkDocs::CreateLabels>

Returns: a L<Paws::WorkDocs::CreateLabelsResponse> instance

  Adds the specified list of labels to the given resource (a document or
folder)


=head2 CreateNotificationSubscription(Endpoint => Str, OrganizationId => Str, Protocol => Str, SubscriptionType => Str)

Each argument is described in detail in: L<Paws::WorkDocs::CreateNotificationSubscription>

Returns: a L<Paws::WorkDocs::CreateNotificationSubscriptionResponse> instance

  Configure WorkDocs to use Amazon SNS notifications.

The endpoint receives a confirmation message, and must confirm the
subscription. For more information, see Confirm the Subscription in the
I<Amazon Simple Notification Service Developer Guide>.


=head2 CreateUser(GivenName => Str, Password => Str, Surname => Str, Username => Str, [AuthenticationToken => Str, EmailAddress => Str, OrganizationId => Str, StorageRule => L<Paws::WorkDocs::StorageRuleType>, TimeZoneId => Str])

Each argument is described in detail in: L<Paws::WorkDocs::CreateUser>

Returns: a L<Paws::WorkDocs::CreateUserResponse> instance

  Creates a user in a Simple AD or Microsoft AD directory. The status of
a newly created user is "ACTIVE". New users can access Amazon WorkDocs.


=head2 DeactivateUser(UserId => Str, [AuthenticationToken => Str])

Each argument is described in detail in: L<Paws::WorkDocs::DeactivateUser>

Returns: nothing

  Deactivates the specified user, which revokes the user's access to
Amazon WorkDocs.


=head2 DeleteComment(CommentId => Str, DocumentId => Str, VersionId => Str, [AuthenticationToken => Str])

Each argument is described in detail in: L<Paws::WorkDocs::DeleteComment>

Returns: nothing

  Deletes the specified comment from the document version.


=head2 DeleteCustomMetadata(ResourceId => Str, [AuthenticationToken => Str, DeleteAll => Bool, Keys => ArrayRef[Str|Undef], VersionId => Str])

Each argument is described in detail in: L<Paws::WorkDocs::DeleteCustomMetadata>

Returns: a L<Paws::WorkDocs::DeleteCustomMetadataResponse> instance

  Deletes custom metadata from the specified resource.


=head2 DeleteDocument(DocumentId => Str, [AuthenticationToken => Str])

Each argument is described in detail in: L<Paws::WorkDocs::DeleteDocument>

Returns: nothing

  Permanently deletes the specified document and its associated metadata.


=head2 DeleteFolder(FolderId => Str, [AuthenticationToken => Str])

Each argument is described in detail in: L<Paws::WorkDocs::DeleteFolder>

Returns: nothing

  Permanently deletes the specified folder and its contents.


=head2 DeleteFolderContents(FolderId => Str, [AuthenticationToken => Str])

Each argument is described in detail in: L<Paws::WorkDocs::DeleteFolderContents>

Returns: nothing

  Deletes the contents of the specified folder.


=head2 DeleteLabels(ResourceId => Str, [AuthenticationToken => Str, DeleteAll => Bool, Labels => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::WorkDocs::DeleteLabels>

Returns: a L<Paws::WorkDocs::DeleteLabelsResponse> instance

  Deletes the specified list of labels from a resource.


=head2 DeleteNotificationSubscription(OrganizationId => Str, SubscriptionId => Str)

Each argument is described in detail in: L<Paws::WorkDocs::DeleteNotificationSubscription>

Returns: nothing

  Deletes the specified subscription from the specified organization.


=head2 DeleteUser(UserId => Str, [AuthenticationToken => Str])

Each argument is described in detail in: L<Paws::WorkDocs::DeleteUser>

Returns: nothing

  Deletes the specified user from a Simple AD or Microsoft AD directory.


=head2 DescribeComments(DocumentId => Str, VersionId => Str, [AuthenticationToken => Str, Limit => Int, Marker => Str])

Each argument is described in detail in: L<Paws::WorkDocs::DescribeComments>

Returns: a L<Paws::WorkDocs::DescribeCommentsResponse> instance

  List all the comments for the specified document version.


=head2 DescribeDocumentVersions(DocumentId => Str, [AuthenticationToken => Str, Fields => Str, Include => Str, Limit => Int, Marker => Str])

Each argument is described in detail in: L<Paws::WorkDocs::DescribeDocumentVersions>

Returns: a L<Paws::WorkDocs::DescribeDocumentVersionsResponse> instance

  Retrieves the document versions for the specified document.

By default, only active versions are returned.


=head2 DescribeFolderContents(FolderId => Str, [AuthenticationToken => Str, Include => Str, Limit => Int, Marker => Str, Order => Str, Sort => Str, Type => Str])

Each argument is described in detail in: L<Paws::WorkDocs::DescribeFolderContents>

Returns: a L<Paws::WorkDocs::DescribeFolderContentsResponse> instance

  Describes the contents of the specified folder, including its documents
and subfolders.

By default, Amazon WorkDocs returns the first 100 active document and
folder metadata items. If there are more results, the response includes
a marker that you can use to request the next set of results. You can
also request initialized documents.


=head2 DescribeNotificationSubscriptions(OrganizationId => Str, [Limit => Int, Marker => Str])

Each argument is described in detail in: L<Paws::WorkDocs::DescribeNotificationSubscriptions>

Returns: a L<Paws::WorkDocs::DescribeNotificationSubscriptionsResponse> instance

  Lists the specified notification subscriptions.


=head2 DescribeResourcePermissions(ResourceId => Str, [AuthenticationToken => Str, Limit => Int, Marker => Str])

Each argument is described in detail in: L<Paws::WorkDocs::DescribeResourcePermissions>

Returns: a L<Paws::WorkDocs::DescribeResourcePermissionsResponse> instance

  Describes the permissions of a specified resource.


=head2 DescribeUsers([AuthenticationToken => Str, Fields => Str, Include => Str, Limit => Int, Marker => Str, Order => Str, OrganizationId => Str, Query => Str, Sort => Str, UserIds => Str])

Each argument is described in detail in: L<Paws::WorkDocs::DescribeUsers>

Returns: a L<Paws::WorkDocs::DescribeUsersResponse> instance

  Describes the specified users. You can describe all users or filter the
results (for example, by status or organization).

By default, Amazon WorkDocs returns the first 24 active or pending
users. If there are more results, the response includes a marker that
you can use to request the next set of results.


=head2 GetDocument(DocumentId => Str, [AuthenticationToken => Str, IncludeCustomMetadata => Bool])

Each argument is described in detail in: L<Paws::WorkDocs::GetDocument>

Returns: a L<Paws::WorkDocs::GetDocumentResponse> instance

  Retrieves details of a document.


=head2 GetDocumentPath(DocumentId => Str, [AuthenticationToken => Str, Fields => Str, Limit => Int, Marker => Str])

Each argument is described in detail in: L<Paws::WorkDocs::GetDocumentPath>

Returns: a L<Paws::WorkDocs::GetDocumentPathResponse> instance

  Retrieves the path information (the hierarchy from the root folder) for
the requested document.

By default, Amazon WorkDocs returns a maximum of 100 levels upwards
from the requested document and only includes the IDs of the parent
folders in the path. You can limit the maximum number of levels. You
can also request the names of the parent folders.


=head2 GetDocumentVersion(DocumentId => Str, VersionId => Str, [AuthenticationToken => Str, Fields => Str, IncludeCustomMetadata => Bool])

Each argument is described in detail in: L<Paws::WorkDocs::GetDocumentVersion>

Returns: a L<Paws::WorkDocs::GetDocumentVersionResponse> instance

  Retrieves version metadata for the specified document.


=head2 GetFolder(FolderId => Str, [AuthenticationToken => Str, IncludeCustomMetadata => Bool])

Each argument is described in detail in: L<Paws::WorkDocs::GetFolder>

Returns: a L<Paws::WorkDocs::GetFolderResponse> instance

  Retrieves the metadata of the specified folder.


=head2 GetFolderPath(FolderId => Str, [AuthenticationToken => Str, Fields => Str, Limit => Int, Marker => Str])

Each argument is described in detail in: L<Paws::WorkDocs::GetFolderPath>

Returns: a L<Paws::WorkDocs::GetFolderPathResponse> instance

  Retrieves the path information (the hierarchy from the root folder) for
the specified folder.

By default, Amazon WorkDocs returns a maximum of 100 levels upwards
from the requested folder and only includes the IDs of the parent
folders in the path. You can limit the maximum number of levels. You
can also request the parent folder names.


=head2 InitiateDocumentVersionUpload(ParentFolderId => Str, [AuthenticationToken => Str, ContentCreatedTimestamp => Str, ContentModifiedTimestamp => Str, ContentType => Str, DocumentSizeInBytes => Int, Id => Str, Name => Str])

Each argument is described in detail in: L<Paws::WorkDocs::InitiateDocumentVersionUpload>

Returns: a L<Paws::WorkDocs::InitiateDocumentVersionUploadResponse> instance

  Creates a new document object and version object.

The client specifies the parent folder ID and name of the document to
upload. The ID is optionally specified when creating a new version of
an existing document. This is the first step to upload a document.
Next, upload the document to the URL returned from the call, and then
call UpdateDocumentVersion.

To cancel the document upload, call AbortDocumentVersionUpload.


=head2 RemoveAllResourcePermissions(ResourceId => Str, [AuthenticationToken => Str])

Each argument is described in detail in: L<Paws::WorkDocs::RemoveAllResourcePermissions>

Returns: nothing

  Removes all the permissions from the specified resource.


=head2 RemoveResourcePermission(PrincipalId => Str, ResourceId => Str, [AuthenticationToken => Str, PrincipalType => Str])

Each argument is described in detail in: L<Paws::WorkDocs::RemoveResourcePermission>

Returns: nothing

  Removes the permission for the specified principal from the specified
resource.


=head2 UpdateDocument(DocumentId => Str, [AuthenticationToken => Str, Name => Str, ParentFolderId => Str, ResourceState => Str])

Each argument is described in detail in: L<Paws::WorkDocs::UpdateDocument>

Returns: nothing

  Updates the specified attributes of a document. The user must have
access to both the document and its parent folder, if applicable.


=head2 UpdateDocumentVersion(DocumentId => Str, VersionId => Str, [AuthenticationToken => Str, VersionStatus => Str])

Each argument is described in detail in: L<Paws::WorkDocs::UpdateDocumentVersion>

Returns: nothing

  Changes the status of the document version to ACTIVE.

Amazon WorkDocs also sets its document container to ACTIVE. This is the
last step in a document upload, after the client uploads the document
to an S3-presigned URL returned by InitiateDocumentVersionUpload.


=head2 UpdateFolder(FolderId => Str, [AuthenticationToken => Str, Name => Str, ParentFolderId => Str, ResourceState => Str])

Each argument is described in detail in: L<Paws::WorkDocs::UpdateFolder>

Returns: nothing

  Updates the specified attributes of the specified folder. The user must
have access to both the folder and its parent folder, if applicable.


=head2 UpdateUser(UserId => Str, [AuthenticationToken => Str, GivenName => Str, Locale => Str, StorageRule => L<Paws::WorkDocs::StorageRuleType>, Surname => Str, TimeZoneId => Str, Type => Str])

Each argument is described in detail in: L<Paws::WorkDocs::UpdateUser>

Returns: a L<Paws::WorkDocs::UpdateUserResponse> instance

  Updates the specified attributes of the specified user, and grants or
revokes administrative privileges to the Amazon WorkDocs site.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllDocumentVersions(sub { },DocumentId => Str, [AuthenticationToken => Str, Fields => Str, Include => Str, Limit => Int, Marker => Str])

=head2 DescribeAllDocumentVersions(DocumentId => Str, [AuthenticationToken => Str, Fields => Str, Include => Str, Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DocumentVersions, passing the object as the first parameter, and the string 'DocumentVersions' as the second parameter 

If not, it will return a a L<Paws::WorkDocs::DescribeDocumentVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFolderContents(sub { },FolderId => Str, [AuthenticationToken => Str, Include => Str, Limit => Int, Marker => Str, Order => Str, Sort => Str, Type => Str])

=head2 DescribeAllFolderContents(FolderId => Str, [AuthenticationToken => Str, Include => Str, Limit => Int, Marker => Str, Order => Str, Sort => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Folders, passing the object as the first parameter, and the string 'Folders' as the second parameter 

 - Documents, passing the object as the first parameter, and the string 'Documents' as the second parameter 

If not, it will return a a L<Paws::WorkDocs::DescribeFolderContentsResponse> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllUsers(sub { },[AuthenticationToken => Str, Fields => Str, Include => Str, Limit => Int, Marker => Str, Order => Str, OrganizationId => Str, Query => Str, Sort => Str, UserIds => Str])

=head2 DescribeAllUsers([AuthenticationToken => Str, Fields => Str, Include => Str, Limit => Int, Marker => Str, Order => Str, OrganizationId => Str, Query => Str, Sort => Str, UserIds => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::WorkDocs::DescribeUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

