package Paws::DS;
  use Moose;
  sub service { 'ds' }
  sub version { '2015-04-16' }
  sub target_prefix { 'DirectoryService_20150416' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddIpRoutes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::AddIpRoutes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddTagsToResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::AddTagsToResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelSchemaExtension {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::CancelSchemaExtension', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConnectDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::ConnectDirectory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::CreateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateComputer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::CreateComputer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConditionalForwarder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::CreateConditionalForwarder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::CreateDirectory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMicrosoftAD {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::CreateMicrosoftAD', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::CreateSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrust {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::CreateTrust', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConditionalForwarder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::DeleteConditionalForwarder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::DeleteDirectory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::DeleteSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrust {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::DeleteTrust', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterEventTopic {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::DeregisterEventTopic', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConditionalForwarders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::DescribeConditionalForwarders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDirectories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::DescribeDirectories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDomainControllers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::DescribeDomainControllers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventTopics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::DescribeEventTopics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::DescribeSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrusts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::DescribeTrusts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableRadius {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::DisableRadius', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableSso {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::DisableSso', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableRadius {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::EnableRadius', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableSso {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::EnableSso', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDirectoryLimits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::GetDirectoryLimits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSnapshotLimits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::GetSnapshotLimits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIpRoutes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::ListIpRoutes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSchemaExtensions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::ListSchemaExtensions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterEventTopic {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::RegisterEventTopic', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveIpRoutes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::RemoveIpRoutes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTagsFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::RemoveTagsFromResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreFromSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::RestoreFromSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSchemaExtension {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::StartSchemaExtension', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConditionalForwarder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::UpdateConditionalForwarder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNumberOfDomainControllers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::UpdateNumberOfDomainControllers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRadius {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::UpdateRadius', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifyTrust {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::VerifyTrust', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AddIpRoutes AddTagsToResource CancelSchemaExtension ConnectDirectory CreateAlias CreateComputer CreateConditionalForwarder CreateDirectory CreateMicrosoftAD CreateSnapshot CreateTrust DeleteConditionalForwarder DeleteDirectory DeleteSnapshot DeleteTrust DeregisterEventTopic DescribeConditionalForwarders DescribeDirectories DescribeDomainControllers DescribeEventTopics DescribeSnapshots DescribeTrusts DisableRadius DisableSso EnableRadius EnableSso GetDirectoryLimits GetSnapshotLimits ListIpRoutes ListSchemaExtensions ListTagsForResource RegisterEventTopic RemoveIpRoutes RemoveTagsFromResource RestoreFromSnapshot StartSchemaExtension UpdateConditionalForwarder UpdateNumberOfDomainControllers UpdateRadius VerifyTrust / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DS - Perl Interface to AWS AWS Directory Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DS');
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

AWS Directory Service

AWS Directory Service is a web service that makes it easy for you to
setup and run directories in the AWS cloud, or connect your AWS
resources with an existing on-premises Microsoft Active Directory. This
guide provides detailed information about AWS Directory Service
operations, data types, parameters, and errors. For information about
AWS Directory Services features, see AWS Directory Service and the AWS
Directory Service Administration Guide.

AWS provides SDKs that consist of libraries and sample code for various
programming languages and platforms (Java, Ruby, .Net, iOS, Android,
etc.). The SDKs provide a convenient way to create programmatic access
to AWS Directory Service and other AWS services. For more information
about the AWS SDKs, including how to download and install them, see
Tools for Amazon Web Services.

=head1 METHODS

=head2 AddIpRoutes(DirectoryId => Str, IpRoutes => ArrayRef[L<Paws::DS::IpRoute>], [UpdateSecurityGroupForDirectoryControllers => Bool])

Each argument is described in detail in: L<Paws::DS::AddIpRoutes>

Returns: a L<Paws::DS::AddIpRoutesResult> instance

If the DNS server for your on-premises domain uses a publicly
addressable IP address, you must add a CIDR address block to correctly
route traffic to and from your Microsoft AD on Amazon Web Services.
I<AddIpRoutes> adds this address block. You can also use I<AddIpRoutes>
to facilitate routing traffic that uses public IP ranges from your
Microsoft AD on AWS to a peer VPC.

Before you call I<AddIpRoutes>, ensure that all of the required
permissions have been explicitly granted through a policy. For details
about what permissions are required to run the I<AddIpRoutes>
operation, see AWS Directory Service API Permissions: Actions,
Resources, and Conditions Reference.


=head2 AddTagsToResource(ResourceId => Str, Tags => ArrayRef[L<Paws::DS::Tag>])

Each argument is described in detail in: L<Paws::DS::AddTagsToResource>

Returns: a L<Paws::DS::AddTagsToResourceResult> instance

Adds or overwrites one or more tags for the specified directory. Each
directory can have a maximum of 50 tags. Each tag consists of a key and
optional value. Tag keys must be unique to each resource.


=head2 CancelSchemaExtension(DirectoryId => Str, SchemaExtensionId => Str)

Each argument is described in detail in: L<Paws::DS::CancelSchemaExtension>

Returns: a L<Paws::DS::CancelSchemaExtensionResult> instance

Cancels an in-progress schema extension to a Microsoft AD directory.
Once a schema extension has started replicating to all domain
controllers, the task can no longer be canceled. A schema extension can
be canceled during any of the following states; C<Initializing>,
C<CreatingSnapshot>, and C<UpdatingSchema>.


=head2 ConnectDirectory(ConnectSettings => L<Paws::DS::DirectoryConnectSettings>, Name => Str, Password => Str, Size => Str, [Description => Str, ShortName => Str])

Each argument is described in detail in: L<Paws::DS::ConnectDirectory>

Returns: a L<Paws::DS::ConnectDirectoryResult> instance

Creates an AD Connector to connect to an on-premises directory.

Before you call I<ConnectDirectory>, ensure that all of the required
permissions have been explicitly granted through a policy. For details
about what permissions are required to run the I<ConnectDirectory>
operation, see AWS Directory Service API Permissions: Actions,
Resources, and Conditions Reference.


=head2 CreateAlias(Alias => Str, DirectoryId => Str)

Each argument is described in detail in: L<Paws::DS::CreateAlias>

Returns: a L<Paws::DS::CreateAliasResult> instance

Creates an alias for a directory and assigns the alias to the
directory. The alias is used to construct the access URL for the
directory, such as C<http://E<lt>aliasE<gt>.awsapps.com>.

After an alias has been created, it cannot be deleted or reused, so
this operation should only be used when absolutely necessary.


=head2 CreateComputer(ComputerName => Str, DirectoryId => Str, Password => Str, [ComputerAttributes => ArrayRef[L<Paws::DS::Attribute>], OrganizationalUnitDistinguishedName => Str])

Each argument is described in detail in: L<Paws::DS::CreateComputer>

Returns: a L<Paws::DS::CreateComputerResult> instance

Creates a computer account in the specified directory, and joins the
computer to the directory.


=head2 CreateConditionalForwarder(DirectoryId => Str, DnsIpAddrs => ArrayRef[Str|Undef], RemoteDomainName => Str)

Each argument is described in detail in: L<Paws::DS::CreateConditionalForwarder>

Returns: a L<Paws::DS::CreateConditionalForwarderResult> instance

Creates a conditional forwarder associated with your AWS directory.
Conditional forwarders are required in order to set up a trust
relationship with another domain. The conditional forwarder points to
the trusted domain.


=head2 CreateDirectory(Name => Str, Password => Str, Size => Str, [Description => Str, ShortName => Str, VpcSettings => L<Paws::DS::DirectoryVpcSettings>])

Each argument is described in detail in: L<Paws::DS::CreateDirectory>

Returns: a L<Paws::DS::CreateDirectoryResult> instance

Creates a Simple AD directory.

Before you call I<CreateDirectory>, ensure that all of the required
permissions have been explicitly granted through a policy. For details
about what permissions are required to run the I<CreateDirectory>
operation, see AWS Directory Service API Permissions: Actions,
Resources, and Conditions Reference.


=head2 CreateMicrosoftAD(Name => Str, Password => Str, VpcSettings => L<Paws::DS::DirectoryVpcSettings>, [Description => Str, ShortName => Str])

Each argument is described in detail in: L<Paws::DS::CreateMicrosoftAD>

Returns: a L<Paws::DS::CreateMicrosoftADResult> instance

Creates a Microsoft AD in the AWS cloud.

Before you call I<CreateMicrosoftAD>, ensure that all of the required
permissions have been explicitly granted through a policy. For details
about what permissions are required to run the I<CreateMicrosoftAD>
operation, see AWS Directory Service API Permissions: Actions,
Resources, and Conditions Reference.


=head2 CreateSnapshot(DirectoryId => Str, [Name => Str])

Each argument is described in detail in: L<Paws::DS::CreateSnapshot>

Returns: a L<Paws::DS::CreateSnapshotResult> instance

Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS
cloud.

You cannot take snapshots of AD Connector directories.


=head2 CreateTrust(DirectoryId => Str, RemoteDomainName => Str, TrustDirection => Str, TrustPassword => Str, [ConditionalForwarderIpAddrs => ArrayRef[Str|Undef], TrustType => Str])

Each argument is described in detail in: L<Paws::DS::CreateTrust>

Returns: a L<Paws::DS::CreateTrustResult> instance

AWS Directory Service for Microsoft Active Directory allows you to
configure trust relationships. For example, you can establish a trust
between your Microsoft AD in the AWS cloud, and your existing
on-premises Microsoft Active Directory. This would allow you to provide
users and groups access to resources in either domain, with a single
set of credentials.

This action initiates the creation of the AWS side of a trust
relationship between a Microsoft AD in the AWS cloud and an external
domain.


=head2 DeleteConditionalForwarder(DirectoryId => Str, RemoteDomainName => Str)

Each argument is described in detail in: L<Paws::DS::DeleteConditionalForwarder>

Returns: a L<Paws::DS::DeleteConditionalForwarderResult> instance

Deletes a conditional forwarder that has been set up for your AWS
directory.


=head2 DeleteDirectory(DirectoryId => Str)

Each argument is described in detail in: L<Paws::DS::DeleteDirectory>

Returns: a L<Paws::DS::DeleteDirectoryResult> instance

Deletes an AWS Directory Service directory.

Before you call I<DeleteDirectory>, ensure that all of the required
permissions have been explicitly granted through a policy. For details
about what permissions are required to run the I<DeleteDirectory>
operation, see AWS Directory Service API Permissions: Actions,
Resources, and Conditions Reference.


=head2 DeleteSnapshot(SnapshotId => Str)

Each argument is described in detail in: L<Paws::DS::DeleteSnapshot>

Returns: a L<Paws::DS::DeleteSnapshotResult> instance

Deletes a directory snapshot.


=head2 DeleteTrust(TrustId => Str, [DeleteAssociatedConditionalForwarder => Bool])

Each argument is described in detail in: L<Paws::DS::DeleteTrust>

Returns: a L<Paws::DS::DeleteTrustResult> instance

Deletes an existing trust relationship between your Microsoft AD in the
AWS cloud and an external domain.


=head2 DeregisterEventTopic(DirectoryId => Str, TopicName => Str)

Each argument is described in detail in: L<Paws::DS::DeregisterEventTopic>

Returns: a L<Paws::DS::DeregisterEventTopicResult> instance

Removes the specified directory as a publisher to the specified SNS
topic.


=head2 DescribeConditionalForwarders(DirectoryId => Str, [RemoteDomainNames => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::DS::DescribeConditionalForwarders>

Returns: a L<Paws::DS::DescribeConditionalForwardersResult> instance

Obtains information about the conditional forwarders for this account.

If no input parameters are provided for RemoteDomainNames, this request
describes all conditional forwarders for the specified directory ID.


=head2 DescribeDirectories([DirectoryIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::DS::DescribeDirectories>

Returns: a L<Paws::DS::DescribeDirectoriesResult> instance

Obtains information about the directories that belong to this account.

You can retrieve information about specific directories by passing the
directory identifiers in the I<DirectoryIds> parameter. Otherwise, all
directories that belong to the current account are returned.

This operation supports pagination with the use of the I<NextToken>
request and response parameters. If more results are available, the
I<DescribeDirectoriesResult.NextToken> member contains a token that you
pass in the next call to DescribeDirectories to retrieve the next set
of items.

You can also specify a maximum number of return results with the
I<Limit> parameter.


=head2 DescribeDomainControllers(DirectoryId => Str, [DomainControllerIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::DS::DescribeDomainControllers>

Returns: a L<Paws::DS::DescribeDomainControllersResult> instance

Provides information about any domain controllers in your directory.


=head2 DescribeEventTopics([DirectoryId => Str, TopicNames => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::DS::DescribeEventTopics>

Returns: a L<Paws::DS::DescribeEventTopicsResult> instance

Obtains information about which SNS topics receive status messages from
the specified directory.

If no input parameters are provided, such as DirectoryId or TopicName,
this request describes all of the associations in the account.


=head2 DescribeSnapshots([DirectoryId => Str, Limit => Int, NextToken => Str, SnapshotIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::DS::DescribeSnapshots>

Returns: a L<Paws::DS::DescribeSnapshotsResult> instance

Obtains information about the directory snapshots that belong to this
account.

This operation supports pagination with the use of the I<NextToken>
request and response parameters. If more results are available, the
I<DescribeSnapshots.NextToken> member contains a token that you pass in
the next call to DescribeSnapshots to retrieve the next set of items.

You can also specify a maximum number of return results with the
I<Limit> parameter.


=head2 DescribeTrusts([DirectoryId => Str, Limit => Int, NextToken => Str, TrustIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::DS::DescribeTrusts>

Returns: a L<Paws::DS::DescribeTrustsResult> instance

Obtains information about the trust relationships for this account.

If no input parameters are provided, such as DirectoryId or TrustIds,
this request describes all the trust relationships belonging to the
account.


=head2 DisableRadius(DirectoryId => Str)

Each argument is described in detail in: L<Paws::DS::DisableRadius>

Returns: a L<Paws::DS::DisableRadiusResult> instance

Disables multi-factor authentication (MFA) with the Remote
Authentication Dial In User Service (RADIUS) server for an AD Connector
directory.


=head2 DisableSso(DirectoryId => Str, [Password => Str, UserName => Str])

Each argument is described in detail in: L<Paws::DS::DisableSso>

Returns: a L<Paws::DS::DisableSsoResult> instance

Disables single-sign on for a directory.


=head2 EnableRadius(DirectoryId => Str, RadiusSettings => L<Paws::DS::RadiusSettings>)

Each argument is described in detail in: L<Paws::DS::EnableRadius>

Returns: a L<Paws::DS::EnableRadiusResult> instance

Enables multi-factor authentication (MFA) with the Remote
Authentication Dial In User Service (RADIUS) server for an AD Connector
directory.


=head2 EnableSso(DirectoryId => Str, [Password => Str, UserName => Str])

Each argument is described in detail in: L<Paws::DS::EnableSso>

Returns: a L<Paws::DS::EnableSsoResult> instance

Enables single sign-on for a directory.


=head2 GetDirectoryLimits()

Each argument is described in detail in: L<Paws::DS::GetDirectoryLimits>

Returns: a L<Paws::DS::GetDirectoryLimitsResult> instance

Obtains directory limit information for the current region.


=head2 GetSnapshotLimits(DirectoryId => Str)

Each argument is described in detail in: L<Paws::DS::GetSnapshotLimits>

Returns: a L<Paws::DS::GetSnapshotLimitsResult> instance

Obtains the manual snapshot limits for a directory.


=head2 ListIpRoutes(DirectoryId => Str, [Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::DS::ListIpRoutes>

Returns: a L<Paws::DS::ListIpRoutesResult> instance

Lists the address blocks that you have added to a directory.


=head2 ListSchemaExtensions(DirectoryId => Str, [Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::DS::ListSchemaExtensions>

Returns: a L<Paws::DS::ListSchemaExtensionsResult> instance

Lists all schema extensions applied to a Microsoft AD Directory.


=head2 ListTagsForResource(ResourceId => Str, [Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::DS::ListTagsForResource>

Returns: a L<Paws::DS::ListTagsForResourceResult> instance

Lists all tags on a directory.


=head2 RegisterEventTopic(DirectoryId => Str, TopicName => Str)

Each argument is described in detail in: L<Paws::DS::RegisterEventTopic>

Returns: a L<Paws::DS::RegisterEventTopicResult> instance

Associates a directory with an SNS topic. This establishes the
directory as a publisher to the specified SNS topic. You can then
receive email or text (SMS) messages when the status of your directory
changes. You get notified if your directory goes from an Active status
to an Impaired or Inoperable status. You also receive a notification
when the directory returns to an Active status.


=head2 RemoveIpRoutes(CidrIps => ArrayRef[Str|Undef], DirectoryId => Str)

Each argument is described in detail in: L<Paws::DS::RemoveIpRoutes>

Returns: a L<Paws::DS::RemoveIpRoutesResult> instance

Removes IP address blocks from a directory.


=head2 RemoveTagsFromResource(ResourceId => Str, TagKeys => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::DS::RemoveTagsFromResource>

Returns: a L<Paws::DS::RemoveTagsFromResourceResult> instance

Removes tags from a directory.


=head2 RestoreFromSnapshot(SnapshotId => Str)

Each argument is described in detail in: L<Paws::DS::RestoreFromSnapshot>

Returns: a L<Paws::DS::RestoreFromSnapshotResult> instance

Restores a directory using an existing directory snapshot.

When you restore a directory from a snapshot, any changes made to the
directory after the snapshot date are overwritten.

This action returns as soon as the restore operation is initiated. You
can monitor the progress of the restore operation by calling the
DescribeDirectories operation with the directory identifier. When the
B<DirectoryDescription.Stage> value changes to C<Active>, the restore
operation is complete.


=head2 StartSchemaExtension(CreateSnapshotBeforeSchemaExtension => Bool, Description => Str, DirectoryId => Str, LdifContent => Str)

Each argument is described in detail in: L<Paws::DS::StartSchemaExtension>

Returns: a L<Paws::DS::StartSchemaExtensionResult> instance

Applies a schema extension to a Microsoft AD directory.


=head2 UpdateConditionalForwarder(DirectoryId => Str, DnsIpAddrs => ArrayRef[Str|Undef], RemoteDomainName => Str)

Each argument is described in detail in: L<Paws::DS::UpdateConditionalForwarder>

Returns: a L<Paws::DS::UpdateConditionalForwarderResult> instance

Updates a conditional forwarder that has been set up for your AWS
directory.


=head2 UpdateNumberOfDomainControllers(DesiredNumber => Int, DirectoryId => Str)

Each argument is described in detail in: L<Paws::DS::UpdateNumberOfDomainControllers>

Returns: a L<Paws::DS::UpdateNumberOfDomainControllersResult> instance

Adds or removes domain controllers to or from the directory. Based on
the difference between current value and new value (provided through
this API call), domain controllers will be added or removed. It may
take up to 45 minutes for any new domain controllers to become fully
active once the requested number of domain controllers is updated.
During this time, you cannot make another update request.


=head2 UpdateRadius(DirectoryId => Str, RadiusSettings => L<Paws::DS::RadiusSettings>)

Each argument is described in detail in: L<Paws::DS::UpdateRadius>

Returns: a L<Paws::DS::UpdateRadiusResult> instance

Updates the Remote Authentication Dial In User Service (RADIUS) server
information for an AD Connector directory.


=head2 VerifyTrust(TrustId => Str)

Each argument is described in detail in: L<Paws::DS::VerifyTrust>

Returns: a L<Paws::DS::VerifyTrustResult> instance

AWS Directory Service for Microsoft Active Directory allows you to
configure and verify trust relationships.

This action verifies a trust relationship between your Microsoft AD in
the AWS cloud and an external domain.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

