package Paws::WorkDocs;
  use Moose;
  sub service { 'workdocs' }
  sub signing_name { 'workdocs' }
  sub version { '2016-05-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
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
  sub DescribeActivities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DescribeActivities', @_);
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
  sub DescribeGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DescribeGroups', @_);
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
  sub DescribeRootFolders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DescribeRootFolders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::DescribeUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCurrentUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::GetCurrentUser', @_);
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
  sub GetResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkDocs::GetResources', @_);
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
  
  sub DescribeAllActivities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeActivities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeActivities(@_, Marker => $next_result->Marker);
        push @{ $result->UserActivities }, @{ $next_result->UserActivities };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'UserActivities') foreach (@{ $result->UserActivities });
        $result = $self->DescribeActivities(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'UserActivities') foreach (@{ $result->UserActivities });
    }

    return undef
  }
  sub DescribeAllComments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeComments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeComments(@_, Marker => $next_result->Marker);
        push @{ $result->Comments }, @{ $next_result->Comments };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Comments') foreach (@{ $result->Comments });
        $result = $self->DescribeComments(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Comments') foreach (@{ $result->Comments });
    }

    return undef
  }
  sub DescribeAllDocumentVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDocumentVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDocumentVersions(@_, Marker => $next_result->Marker);
        push @{ $result->DocumentVersions }, @{ $next_result->DocumentVersions };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'DocumentVersions') foreach (@{ $result->DocumentVersions });
        $result = $self->DescribeDocumentVersions(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'DocumentVersions') foreach (@{ $result->DocumentVersions });
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
        $next_result = $self->DescribeFolderContents(@_, Marker => $next_result->Marker);
        push @{ $result->Folders }, @{ $next_result->Folders };
        push @{ $result->Documents }, @{ $next_result->Documents };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Folders') foreach (@{ $result->Folders });
        $callback->($_ => 'Documents') foreach (@{ $result->Documents });
        $result = $self->DescribeFolderContents(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Folders') foreach (@{ $result->Folders });
      $callback->($_ => 'Documents') foreach (@{ $result->Documents });
    }

    return undef
  }
  sub DescribeAllGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeGroups(@_, Marker => $next_result->Marker);
        push @{ $result->Groups }, @{ $next_result->Groups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Groups') foreach (@{ $result->Groups });
        $result = $self->DescribeGroups(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Groups') foreach (@{ $result->Groups });
    }

    return undef
  }
  sub DescribeAllNotificationSubscriptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeNotificationSubscriptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeNotificationSubscriptions(@_, Marker => $next_result->Marker);
        push @{ $result->Subscriptions }, @{ $next_result->Subscriptions };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Subscriptions') foreach (@{ $result->Subscriptions });
        $result = $self->DescribeNotificationSubscriptions(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Subscriptions') foreach (@{ $result->Subscriptions });
    }

    return undef
  }
  sub DescribeAllResourcePermissions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeResourcePermissions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeResourcePermissions(@_, Marker => $next_result->Marker);
        push @{ $result->Principals }, @{ $next_result->Principals };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Principals') foreach (@{ $result->Principals });
        $result = $self->DescribeResourcePermissions(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Principals') foreach (@{ $result->Principals });
    }

    return undef
  }
  sub DescribeAllRootFolders {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRootFolders(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeRootFolders(@_, Marker => $next_result->Marker);
        push @{ $result->Folders }, @{ $next_result->Folders };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Folders') foreach (@{ $result->Folders });
        $result = $self->DescribeRootFolders(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Folders') foreach (@{ $result->Folders });
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
        $next_result = $self->DescribeUsers(@_, Marker => $next_result->Marker);
        push @{ $result->Users }, @{ $next_result->Users };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Users') foreach (@{ $result->Users });
        $result = $self->DescribeUsers(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Users') foreach (@{ $result->Users });
    }

    return undef
  }


  sub operations { qw/AbortDocumentVersionUpload ActivateUser AddResourcePermissions CreateComment CreateCustomMetadata CreateFolder CreateLabels CreateNotificationSubscription CreateUser DeactivateUser DeleteComment DeleteCustomMetadata DeleteDocument DeleteFolder DeleteFolderContents DeleteLabels DeleteNotificationSubscription DeleteUser DescribeActivities DescribeComments DescribeDocumentVersions DescribeFolderContents DescribeGroups DescribeNotificationSubscriptions DescribeResourcePermissions DescribeRootFolders DescribeUsers GetCurrentUser GetDocument GetDocumentPath GetDocumentVersion GetFolder GetFolderPath GetResources InitiateDocumentVersionUpload RemoveAllResourcePermissions RemoveResourcePermission UpdateDocument UpdateDocumentVersion UpdateFolder UpdateUser / }

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
want to migrate their files from an on-premises or off-premises file
system or service. Users can insert files into a user directory
structure, as well as allow for basic metadata changes, such as
modifications to the permissions of files.

=item *

Security: Support security applications are supported for users who
have additional security needs, such as antivirus or data loss
prevention. The API actions, along with AWS CloudTrail, allow these
applications to detect when changes occur in Amazon WorkDocs. Then, the
application can take the necessary actions and replace the target file.
If the target file violates the policy, the application can also choose
to email the user.

=item *

eDiscovery/Analytics: General administrative applications are
supported, such as eDiscovery and analytics. These applications can
choose to mimic or record the actions in an Amazon WorkDocs site, along
with AWS CloudTrail, to replicate data for eDiscovery, backup, or
analytical applications.

=back

All Amazon WorkDocs API actions are Amazon authenticated and
certificate-signed. They not only require the use of the AWS SDK, but
also allow for the exclusive use of IAM users and roles to help
facilitate access, trust, and permission policies. By creating a role
and allowing an IAM user to access the Amazon WorkDocs site, the IAM
user gains full administrative visibility into the entire Amazon
WorkDocs site (or as set in the IAM policy). This includes, but is not
limited to, the ability to modify file permissions and upload any file
to any user. This allows developers to perform the three use cases
above, as well as give users the ability to grant access on a selective
basis using the IAM model.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01>


=head1 METHODS

=head2 AbortDocumentVersionUpload

=over

=item DocumentId => Str

=item VersionId => Str

=item [AuthenticationToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::AbortDocumentVersionUpload>

Returns: nothing

Aborts the upload of the specified document version that was previously
initiated by InitiateDocumentVersionUpload. The client should make this
call only when it no longer intends to upload the document version, or
fails to do so.


=head2 ActivateUser

=over

=item UserId => Str

=item [AuthenticationToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::ActivateUser>

Returns: a L<Paws::WorkDocs::ActivateUserResponse> instance

Activates the specified user. Only active users can access Amazon
WorkDocs.


=head2 AddResourcePermissions

=over

=item Principals => ArrayRef[L<Paws::WorkDocs::SharePrincipal>]

=item ResourceId => Str

=item [AuthenticationToken => Str]

=item [NotificationOptions => L<Paws::WorkDocs::NotificationOptions>]


=back

Each argument is described in detail in: L<Paws::WorkDocs::AddResourcePermissions>

Returns: a L<Paws::WorkDocs::AddResourcePermissionsResponse> instance

Creates a set of permissions for the specified folder or document. The
resource permissions are overwritten if the principals already have
different permissions.


=head2 CreateComment

=over

=item DocumentId => Str

=item Text => Str

=item VersionId => Str

=item [AuthenticationToken => Str]

=item [NotifyCollaborators => Bool]

=item [ParentId => Str]

=item [ThreadId => Str]

=item [Visibility => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::CreateComment>

Returns: a L<Paws::WorkDocs::CreateCommentResponse> instance

Adds a new comment to the specified document version.


=head2 CreateCustomMetadata

=over

=item CustomMetadata => L<Paws::WorkDocs::CustomMetadataMap>

=item ResourceId => Str

=item [AuthenticationToken => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::CreateCustomMetadata>

Returns: a L<Paws::WorkDocs::CreateCustomMetadataResponse> instance

Adds one or more custom properties to the specified resource (a folder,
document, or version).


=head2 CreateFolder

=over

=item ParentFolderId => Str

=item [AuthenticationToken => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::CreateFolder>

Returns: a L<Paws::WorkDocs::CreateFolderResponse> instance

Creates a folder with the specified name and parent folder.


=head2 CreateLabels

=over

=item Labels => ArrayRef[Str|Undef]

=item ResourceId => Str

=item [AuthenticationToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::CreateLabels>

Returns: a L<Paws::WorkDocs::CreateLabelsResponse> instance

Adds the specified list of labels to the given resource (a document or
folder)


=head2 CreateNotificationSubscription

=over

=item Endpoint => Str

=item OrganizationId => Str

=item Protocol => Str

=item SubscriptionType => Str


=back

Each argument is described in detail in: L<Paws::WorkDocs::CreateNotificationSubscription>

Returns: a L<Paws::WorkDocs::CreateNotificationSubscriptionResponse> instance

Configure Amazon WorkDocs to use Amazon SNS notifications. The endpoint
receives a confirmation message, and must confirm the subscription.

For more information, see Subscribe to Notifications
(http://docs.aws.amazon.com/workdocs/latest/developerguide/subscribe-notifications.html)
in the I<Amazon WorkDocs Developer Guide>.


=head2 CreateUser

=over

=item GivenName => Str

=item Password => Str

=item Surname => Str

=item Username => Str

=item [AuthenticationToken => Str]

=item [EmailAddress => Str]

=item [OrganizationId => Str]

=item [StorageRule => L<Paws::WorkDocs::StorageRuleType>]

=item [TimeZoneId => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::CreateUser>

Returns: a L<Paws::WorkDocs::CreateUserResponse> instance

Creates a user in a Simple AD or Microsoft AD directory. The status of
a newly created user is "ACTIVE". New users can access Amazon WorkDocs.


=head2 DeactivateUser

=over

=item UserId => Str

=item [AuthenticationToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::DeactivateUser>

Returns: nothing

Deactivates the specified user, which revokes the user's access to
Amazon WorkDocs.


=head2 DeleteComment

=over

=item CommentId => Str

=item DocumentId => Str

=item VersionId => Str

=item [AuthenticationToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::DeleteComment>

Returns: nothing

Deletes the specified comment from the document version.


=head2 DeleteCustomMetadata

=over

=item ResourceId => Str

=item [AuthenticationToken => Str]

=item [DeleteAll => Bool]

=item [Keys => ArrayRef[Str|Undef]]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::DeleteCustomMetadata>

Returns: a L<Paws::WorkDocs::DeleteCustomMetadataResponse> instance

Deletes custom metadata from the specified resource.


=head2 DeleteDocument

=over

=item DocumentId => Str

=item [AuthenticationToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::DeleteDocument>

Returns: nothing

Permanently deletes the specified document and its associated metadata.


=head2 DeleteFolder

=over

=item FolderId => Str

=item [AuthenticationToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::DeleteFolder>

Returns: nothing

Permanently deletes the specified folder and its contents.


=head2 DeleteFolderContents

=over

=item FolderId => Str

=item [AuthenticationToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::DeleteFolderContents>

Returns: nothing

Deletes the contents of the specified folder.


=head2 DeleteLabels

=over

=item ResourceId => Str

=item [AuthenticationToken => Str]

=item [DeleteAll => Bool]

=item [Labels => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::WorkDocs::DeleteLabels>

Returns: a L<Paws::WorkDocs::DeleteLabelsResponse> instance

Deletes the specified list of labels from a resource.


=head2 DeleteNotificationSubscription

=over

=item OrganizationId => Str

=item SubscriptionId => Str


=back

Each argument is described in detail in: L<Paws::WorkDocs::DeleteNotificationSubscription>

Returns: nothing

Deletes the specified subscription from the specified organization.


=head2 DeleteUser

=over

=item UserId => Str

=item [AuthenticationToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::DeleteUser>

Returns: nothing

Deletes the specified user from a Simple AD or Microsoft AD directory.


=head2 DescribeActivities

=over

=item [ActivityTypes => Str]

=item [AuthenticationToken => Str]

=item [EndTime => Str]

=item [IncludeIndirectActivities => Bool]

=item [Limit => Int]

=item [Marker => Str]

=item [OrganizationId => Str]

=item [ResourceId => Str]

=item [StartTime => Str]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::DescribeActivities>

Returns: a L<Paws::WorkDocs::DescribeActivitiesResponse> instance

Describes the user activities in a specified time period.


=head2 DescribeComments

=over

=item DocumentId => Str

=item VersionId => Str

=item [AuthenticationToken => Str]

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::DescribeComments>

Returns: a L<Paws::WorkDocs::DescribeCommentsResponse> instance

List all the comments for the specified document version.


=head2 DescribeDocumentVersions

=over

=item DocumentId => Str

=item [AuthenticationToken => Str]

=item [Fields => Str]

=item [Include => Str]

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::DescribeDocumentVersions>

Returns: a L<Paws::WorkDocs::DescribeDocumentVersionsResponse> instance

Retrieves the document versions for the specified document.

By default, only active versions are returned.


=head2 DescribeFolderContents

=over

=item FolderId => Str

=item [AuthenticationToken => Str]

=item [Include => Str]

=item [Limit => Int]

=item [Marker => Str]

=item [Order => Str]

=item [Sort => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::DescribeFolderContents>

Returns: a L<Paws::WorkDocs::DescribeFolderContentsResponse> instance

Describes the contents of the specified folder, including its documents
and subfolders.

By default, Amazon WorkDocs returns the first 100 active document and
folder metadata items. If there are more results, the response includes
a marker that you can use to request the next set of results. You can
also request initialized documents.


=head2 DescribeGroups

=over

=item SearchQuery => Str

=item [AuthenticationToken => Str]

=item [Limit => Int]

=item [Marker => Str]

=item [OrganizationId => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::DescribeGroups>

Returns: a L<Paws::WorkDocs::DescribeGroupsResponse> instance

Describes the groups specified by the query. Groups are defined by the
underlying Active Directory.


=head2 DescribeNotificationSubscriptions

=over

=item OrganizationId => Str

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::DescribeNotificationSubscriptions>

Returns: a L<Paws::WorkDocs::DescribeNotificationSubscriptionsResponse> instance

Lists the specified notification subscriptions.


=head2 DescribeResourcePermissions

=over

=item ResourceId => Str

=item [AuthenticationToken => Str]

=item [Limit => Int]

=item [Marker => Str]

=item [PrincipalId => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::DescribeResourcePermissions>

Returns: a L<Paws::WorkDocs::DescribeResourcePermissionsResponse> instance

Describes the permissions of a specified resource.


=head2 DescribeRootFolders

=over

=item AuthenticationToken => Str

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::DescribeRootFolders>

Returns: a L<Paws::WorkDocs::DescribeRootFoldersResponse> instance

Describes the current user's special folders; the C<RootFolder> and the
C<RecycleBin>. C<RootFolder> is the root of user's files and folders
and C<RecycleBin> is the root of recycled items. This is not a valid
action for SigV4 (administrative API) clients.

This action requires an authentication token. To get an authentication
token, register an application with Amazon WorkDocs. For more
information, see Authentication and Access Control for User
Applications
(http://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html)
in the I<Amazon WorkDocs Developer Guide>.


=head2 DescribeUsers

=over

=item [AuthenticationToken => Str]

=item [Fields => Str]

=item [Include => Str]

=item [Limit => Int]

=item [Marker => Str]

=item [Order => Str]

=item [OrganizationId => Str]

=item [Query => Str]

=item [Sort => Str]

=item [UserIds => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::DescribeUsers>

Returns: a L<Paws::WorkDocs::DescribeUsersResponse> instance

Describes the specified users. You can describe all users or filter the
results (for example, by status or organization).

By default, Amazon WorkDocs returns the first 24 active or pending
users. If there are more results, the response includes a marker that
you can use to request the next set of results.


=head2 GetCurrentUser

=over

=item AuthenticationToken => Str


=back

Each argument is described in detail in: L<Paws::WorkDocs::GetCurrentUser>

Returns: a L<Paws::WorkDocs::GetCurrentUserResponse> instance

Retrieves details of the current user for whom the authentication token
was generated. This is not a valid action for SigV4 (administrative
API) clients.


=head2 GetDocument

=over

=item DocumentId => Str

=item [AuthenticationToken => Str]

=item [IncludeCustomMetadata => Bool]


=back

Each argument is described in detail in: L<Paws::WorkDocs::GetDocument>

Returns: a L<Paws::WorkDocs::GetDocumentResponse> instance

Retrieves details of a document.


=head2 GetDocumentPath

=over

=item DocumentId => Str

=item [AuthenticationToken => Str]

=item [Fields => Str]

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::GetDocumentPath>

Returns: a L<Paws::WorkDocs::GetDocumentPathResponse> instance

Retrieves the path information (the hierarchy from the root folder) for
the requested document.

By default, Amazon WorkDocs returns a maximum of 100 levels upwards
from the requested document and only includes the IDs of the parent
folders in the path. You can limit the maximum number of levels. You
can also request the names of the parent folders.


=head2 GetDocumentVersion

=over

=item DocumentId => Str

=item VersionId => Str

=item [AuthenticationToken => Str]

=item [Fields => Str]

=item [IncludeCustomMetadata => Bool]


=back

Each argument is described in detail in: L<Paws::WorkDocs::GetDocumentVersion>

Returns: a L<Paws::WorkDocs::GetDocumentVersionResponse> instance

Retrieves version metadata for the specified document.


=head2 GetFolder

=over

=item FolderId => Str

=item [AuthenticationToken => Str]

=item [IncludeCustomMetadata => Bool]


=back

Each argument is described in detail in: L<Paws::WorkDocs::GetFolder>

Returns: a L<Paws::WorkDocs::GetFolderResponse> instance

Retrieves the metadata of the specified folder.


=head2 GetFolderPath

=over

=item FolderId => Str

=item [AuthenticationToken => Str]

=item [Fields => Str]

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::GetFolderPath>

Returns: a L<Paws::WorkDocs::GetFolderPathResponse> instance

Retrieves the path information (the hierarchy from the root folder) for
the specified folder.

By default, Amazon WorkDocs returns a maximum of 100 levels upwards
from the requested folder and only includes the IDs of the parent
folders in the path. You can limit the maximum number of levels. You
can also request the parent folder names.


=head2 GetResources

=over

=item [AuthenticationToken => Str]

=item [CollectionType => Str]

=item [Limit => Int]

=item [Marker => Str]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::GetResources>

Returns: a L<Paws::WorkDocs::GetResourcesResponse> instance

Retrieves a collection of resources, including folders and documents.
The only C<CollectionType> supported is C<SHARED_WITH_ME>.


=head2 InitiateDocumentVersionUpload

=over

=item ParentFolderId => Str

=item [AuthenticationToken => Str]

=item [ContentCreatedTimestamp => Str]

=item [ContentModifiedTimestamp => Str]

=item [ContentType => Str]

=item [DocumentSizeInBytes => Int]

=item [Id => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::InitiateDocumentVersionUpload>

Returns: a L<Paws::WorkDocs::InitiateDocumentVersionUploadResponse> instance

Creates a new document object and version object.

The client specifies the parent folder ID and name of the document to
upload. The ID is optionally specified when creating a new version of
an existing document. This is the first step to upload a document.
Next, upload the document to the URL returned from the call, and then
call UpdateDocumentVersion.

To cancel the document upload, call AbortDocumentVersionUpload.


=head2 RemoveAllResourcePermissions

=over

=item ResourceId => Str

=item [AuthenticationToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::RemoveAllResourcePermissions>

Returns: nothing

Removes all the permissions from the specified resource.


=head2 RemoveResourcePermission

=over

=item PrincipalId => Str

=item ResourceId => Str

=item [AuthenticationToken => Str]

=item [PrincipalType => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::RemoveResourcePermission>

Returns: nothing

Removes the permission for the specified principal from the specified
resource.


=head2 UpdateDocument

=over

=item DocumentId => Str

=item [AuthenticationToken => Str]

=item [Name => Str]

=item [ParentFolderId => Str]

=item [ResourceState => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::UpdateDocument>

Returns: nothing

Updates the specified attributes of a document. The user must have
access to both the document and its parent folder, if applicable.


=head2 UpdateDocumentVersion

=over

=item DocumentId => Str

=item VersionId => Str

=item [AuthenticationToken => Str]

=item [VersionStatus => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::UpdateDocumentVersion>

Returns: nothing

Changes the status of the document version to ACTIVE.

Amazon WorkDocs also sets its document container to ACTIVE. This is the
last step in a document upload, after the client uploads the document
to an S3-presigned URL returned by InitiateDocumentVersionUpload.


=head2 UpdateFolder

=over

=item FolderId => Str

=item [AuthenticationToken => Str]

=item [Name => Str]

=item [ParentFolderId => Str]

=item [ResourceState => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::UpdateFolder>

Returns: nothing

Updates the specified attributes of the specified folder. The user must
have access to both the folder and its parent folder, if applicable.


=head2 UpdateUser

=over

=item UserId => Str

=item [AuthenticationToken => Str]

=item [GivenName => Str]

=item [GrantPoweruserPrivileges => Str]

=item [Locale => Str]

=item [StorageRule => L<Paws::WorkDocs::StorageRuleType>]

=item [Surname => Str]

=item [TimeZoneId => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::WorkDocs::UpdateUser>

Returns: a L<Paws::WorkDocs::UpdateUserResponse> instance

Updates the specified attributes of the specified user, and grants or
revokes administrative privileges to the Amazon WorkDocs site.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllActivities(sub { },[ActivityTypes => Str, AuthenticationToken => Str, EndTime => Str, IncludeIndirectActivities => Bool, Limit => Int, Marker => Str, OrganizationId => Str, ResourceId => Str, StartTime => Str, UserId => Str])

=head2 DescribeAllActivities([ActivityTypes => Str, AuthenticationToken => Str, EndTime => Str, IncludeIndirectActivities => Bool, Limit => Int, Marker => Str, OrganizationId => Str, ResourceId => Str, StartTime => Str, UserId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserActivities, passing the object as the first parameter, and the string 'UserActivities' as the second parameter 

If not, it will return a a L<Paws::WorkDocs::DescribeActivitiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllComments(sub { },DocumentId => Str, VersionId => Str, [AuthenticationToken => Str, Limit => Int, Marker => Str])

=head2 DescribeAllComments(DocumentId => Str, VersionId => Str, [AuthenticationToken => Str, Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Comments, passing the object as the first parameter, and the string 'Comments' as the second parameter 

If not, it will return a a L<Paws::WorkDocs::DescribeCommentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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


=head2 DescribeAllGroups(sub { },SearchQuery => Str, [AuthenticationToken => Str, Limit => Int, Marker => Str, OrganizationId => Str])

=head2 DescribeAllGroups(SearchQuery => Str, [AuthenticationToken => Str, Limit => Int, Marker => Str, OrganizationId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Groups, passing the object as the first parameter, and the string 'Groups' as the second parameter 

If not, it will return a a L<Paws::WorkDocs::DescribeGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllNotificationSubscriptions(sub { },OrganizationId => Str, [Limit => Int, Marker => Str])

=head2 DescribeAllNotificationSubscriptions(OrganizationId => Str, [Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Subscriptions, passing the object as the first parameter, and the string 'Subscriptions' as the second parameter 

If not, it will return a a L<Paws::WorkDocs::DescribeNotificationSubscriptionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllResourcePermissions(sub { },ResourceId => Str, [AuthenticationToken => Str, Limit => Int, Marker => Str, PrincipalId => Str])

=head2 DescribeAllResourcePermissions(ResourceId => Str, [AuthenticationToken => Str, Limit => Int, Marker => Str, PrincipalId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Principals, passing the object as the first parameter, and the string 'Principals' as the second parameter 

If not, it will return a a L<Paws::WorkDocs::DescribeResourcePermissionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRootFolders(sub { },AuthenticationToken => Str, [Limit => Int, Marker => Str])

=head2 DescribeAllRootFolders(AuthenticationToken => Str, [Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Folders, passing the object as the first parameter, and the string 'Folders' as the second parameter 

If not, it will return a a L<Paws::WorkDocs::DescribeRootFoldersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllUsers(sub { },[AuthenticationToken => Str, Fields => Str, Include => Str, Limit => Int, Marker => Str, Order => Str, OrganizationId => Str, Query => Str, Sort => Str, UserIds => Str])

=head2 DescribeAllUsers([AuthenticationToken => Str, Fields => Str, Include => Str, Limit => Int, Marker => Str, Order => Str, OrganizationId => Str, Query => Str, Sort => Str, UserIds => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::WorkDocs::DescribeUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

