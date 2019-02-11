package Paws::DS;
  use Moose;
  sub service { 'ds' }
  sub signing_name { 'ds' }
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

  
  sub AcceptSharedDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::AcceptSharedDirectory', @_);
    return $self->caller->do_call($self, $call_object);
  }
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
  sub CreateLogSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::CreateLogSubscription', @_);
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
  sub DeleteLogSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::DeleteLogSubscription', @_);
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
  sub DescribeSharedDirectories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::DescribeSharedDirectories', @_);
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
  sub ListLogSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::ListLogSubscriptions', @_);
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
  sub RejectSharedDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::RejectSharedDirectory', @_);
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
  sub ResetUserPassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::ResetUserPassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreFromSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::RestoreFromSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ShareDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::ShareDirectory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSchemaExtension {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::StartSchemaExtension', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnshareDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::UnshareDirectory', @_);
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
  sub UpdateTrust {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::UpdateTrust', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifyTrust {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::VerifyTrust', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllDirectories {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDirectories(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeDirectories(@_, NextToken => $next_result->NextToken);
        push @{ $result->DirectoryDescriptions }, @{ $next_result->DirectoryDescriptions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DirectoryDescriptions') foreach (@{ $result->DirectoryDescriptions });
        $result = $self->DescribeDirectories(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DirectoryDescriptions') foreach (@{ $result->DirectoryDescriptions });
    }

    return undef
  }
  sub DescribeAllDomainControllers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDomainControllers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeDomainControllers(@_, NextToken => $next_result->NextToken);
        push @{ $result->DomainControllers }, @{ $next_result->DomainControllers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DomainControllers') foreach (@{ $result->DomainControllers });
        $result = $self->DescribeDomainControllers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DomainControllers') foreach (@{ $result->DomainControllers });
    }

    return undef
  }
  sub DescribeAllSharedDirectories {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSharedDirectories(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSharedDirectories(@_, NextToken => $next_result->NextToken);
        push @{ $result->SharedDirectories }, @{ $next_result->SharedDirectories };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SharedDirectories') foreach (@{ $result->SharedDirectories });
        $result = $self->DescribeSharedDirectories(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SharedDirectories') foreach (@{ $result->SharedDirectories });
    }

    return undef
  }
  sub DescribeAllSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSnapshots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSnapshots(@_, NextToken => $next_result->NextToken);
        push @{ $result->Snapshots }, @{ $next_result->Snapshots };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Snapshots') foreach (@{ $result->Snapshots });
        $result = $self->DescribeSnapshots(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Snapshots') foreach (@{ $result->Snapshots });
    }

    return undef
  }
  sub DescribeAllTrusts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTrusts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTrusts(@_, NextToken => $next_result->NextToken);
        push @{ $result->Trusts }, @{ $next_result->Trusts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Trusts') foreach (@{ $result->Trusts });
        $result = $self->DescribeTrusts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Trusts') foreach (@{ $result->Trusts });
    }

    return undef
  }
  sub ListAllIpRoutes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIpRoutes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListIpRoutes(@_, NextToken => $next_result->NextToken);
        push @{ $result->IpRoutesInfo }, @{ $next_result->IpRoutesInfo };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IpRoutesInfo') foreach (@{ $result->IpRoutesInfo });
        $result = $self->ListIpRoutes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IpRoutesInfo') foreach (@{ $result->IpRoutesInfo });
    }

    return undef
  }
  sub ListAllLogSubscriptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLogSubscriptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLogSubscriptions(@_, NextToken => $next_result->NextToken);
        push @{ $result->LogSubscriptions }, @{ $next_result->LogSubscriptions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LogSubscriptions') foreach (@{ $result->LogSubscriptions });
        $result = $self->ListLogSubscriptions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LogSubscriptions') foreach (@{ $result->LogSubscriptions });
    }

    return undef
  }
  sub ListAllSchemaExtensions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSchemaExtensions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSchemaExtensions(@_, NextToken => $next_result->NextToken);
        push @{ $result->SchemaExtensionsInfo }, @{ $next_result->SchemaExtensionsInfo };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SchemaExtensionsInfo') foreach (@{ $result->SchemaExtensionsInfo });
        $result = $self->ListSchemaExtensions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SchemaExtensionsInfo') foreach (@{ $result->SchemaExtensionsInfo });
    }

    return undef
  }
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTagsForResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTagsForResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }


  sub operations { qw/AcceptSharedDirectory AddIpRoutes AddTagsToResource CancelSchemaExtension ConnectDirectory CreateAlias CreateComputer CreateConditionalForwarder CreateDirectory CreateLogSubscription CreateMicrosoftAD CreateSnapshot CreateTrust DeleteConditionalForwarder DeleteDirectory DeleteLogSubscription DeleteSnapshot DeleteTrust DeregisterEventTopic DescribeConditionalForwarders DescribeDirectories DescribeDomainControllers DescribeEventTopics DescribeSharedDirectories DescribeSnapshots DescribeTrusts DisableRadius DisableSso EnableRadius EnableSso GetDirectoryLimits GetSnapshotLimits ListIpRoutes ListLogSubscriptions ListSchemaExtensions ListTagsForResource RegisterEventTopic RejectSharedDirectory RemoveIpRoutes RemoveTagsFromResource ResetUserPassword RestoreFromSnapshot ShareDirectory StartSchemaExtension UnshareDirectory UpdateConditionalForwarder UpdateNumberOfDomainControllers UpdateRadius UpdateTrust VerifyTrust / }

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
AWS Directory Services features, see AWS Directory Service
(https://aws.amazon.com/directoryservice/) and the AWS Directory
Service Administration Guide
(http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html).

AWS provides SDKs that consist of libraries and sample code for various
programming languages and platforms (Java, Ruby, .Net, iOS, Android,
etc.). The SDKs provide a convenient way to create programmatic access
to AWS Directory Service and other AWS services. For more information
about the AWS SDKs, including how to download and install them, see
Tools for Amazon Web Services (http://aws.amazon.com/tools/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16>


=head1 METHODS

=head2 AcceptSharedDirectory

=over

=item SharedDirectoryId => Str


=back

Each argument is described in detail in: L<Paws::DS::AcceptSharedDirectory>

Returns: a L<Paws::DS::AcceptSharedDirectoryResult> instance

Accepts a directory sharing request that was sent from the directory
owner account.


=head2 AddIpRoutes

=over

=item DirectoryId => Str

=item IpRoutes => ArrayRef[L<Paws::DS::IpRoute>]

=item [UpdateSecurityGroupForDirectoryControllers => Bool]


=back

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
Resources, and Conditions Reference
(http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).


=head2 AddTagsToResource

=over

=item ResourceId => Str

=item Tags => ArrayRef[L<Paws::DS::Tag>]


=back

Each argument is described in detail in: L<Paws::DS::AddTagsToResource>

Returns: a L<Paws::DS::AddTagsToResourceResult> instance

Adds or overwrites one or more tags for the specified directory. Each
directory can have a maximum of 50 tags. Each tag consists of a key and
optional value. Tag keys must be unique to each resource.


=head2 CancelSchemaExtension

=over

=item DirectoryId => Str

=item SchemaExtensionId => Str


=back

Each argument is described in detail in: L<Paws::DS::CancelSchemaExtension>

Returns: a L<Paws::DS::CancelSchemaExtensionResult> instance

Cancels an in-progress schema extension to a Microsoft AD directory.
Once a schema extension has started replicating to all domain
controllers, the task can no longer be canceled. A schema extension can
be canceled during any of the following states; C<Initializing>,
C<CreatingSnapshot>, and C<UpdatingSchema>.


=head2 ConnectDirectory

=over

=item ConnectSettings => L<Paws::DS::DirectoryConnectSettings>

=item Name => Str

=item Password => Str

=item Size => Str

=item [Description => Str]

=item [ShortName => Str]


=back

Each argument is described in detail in: L<Paws::DS::ConnectDirectory>

Returns: a L<Paws::DS::ConnectDirectoryResult> instance

Creates an AD Connector to connect to an on-premises directory.

Before you call C<ConnectDirectory>, ensure that all of the required
permissions have been explicitly granted through a policy. For details
about what permissions are required to run the C<ConnectDirectory>
operation, see AWS Directory Service API Permissions: Actions,
Resources, and Conditions Reference
(http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).


=head2 CreateAlias

=over

=item Alias => Str

=item DirectoryId => Str


=back

Each argument is described in detail in: L<Paws::DS::CreateAlias>

Returns: a L<Paws::DS::CreateAliasResult> instance

Creates an alias for a directory and assigns the alias to the
directory. The alias is used to construct the access URL for the
directory, such as C<http://E<lt>aliasE<gt>.awsapps.com>.

After an alias has been created, it cannot be deleted or reused, so
this operation should only be used when absolutely necessary.


=head2 CreateComputer

=over

=item ComputerName => Str

=item DirectoryId => Str

=item Password => Str

=item [ComputerAttributes => ArrayRef[L<Paws::DS::Attribute>]]

=item [OrganizationalUnitDistinguishedName => Str]


=back

Each argument is described in detail in: L<Paws::DS::CreateComputer>

Returns: a L<Paws::DS::CreateComputerResult> instance

Creates a computer account in the specified directory, and joins the
computer to the directory.


=head2 CreateConditionalForwarder

=over

=item DirectoryId => Str

=item DnsIpAddrs => ArrayRef[Str|Undef]

=item RemoteDomainName => Str


=back

Each argument is described in detail in: L<Paws::DS::CreateConditionalForwarder>

Returns: a L<Paws::DS::CreateConditionalForwarderResult> instance

Creates a conditional forwarder associated with your AWS directory.
Conditional forwarders are required in order to set up a trust
relationship with another domain. The conditional forwarder points to
the trusted domain.


=head2 CreateDirectory

=over

=item Name => Str

=item Password => Str

=item Size => Str

=item [Description => Str]

=item [ShortName => Str]

=item [VpcSettings => L<Paws::DS::DirectoryVpcSettings>]


=back

Each argument is described in detail in: L<Paws::DS::CreateDirectory>

Returns: a L<Paws::DS::CreateDirectoryResult> instance

Creates a Simple AD directory.

Before you call C<CreateDirectory>, ensure that all of the required
permissions have been explicitly granted through a policy. For details
about what permissions are required to run the C<CreateDirectory>
operation, see AWS Directory Service API Permissions: Actions,
Resources, and Conditions Reference
(http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).


=head2 CreateLogSubscription

=over

=item DirectoryId => Str

=item LogGroupName => Str


=back

Each argument is described in detail in: L<Paws::DS::CreateLogSubscription>

Returns: a L<Paws::DS::CreateLogSubscriptionResult> instance

Creates a subscription to forward real time Directory Service domain
controller security logs to the specified CloudWatch log group in your
AWS account.


=head2 CreateMicrosoftAD

=over

=item Name => Str

=item Password => Str

=item VpcSettings => L<Paws::DS::DirectoryVpcSettings>

=item [Description => Str]

=item [Edition => Str]

=item [ShortName => Str]


=back

Each argument is described in detail in: L<Paws::DS::CreateMicrosoftAD>

Returns: a L<Paws::DS::CreateMicrosoftADResult> instance

Creates an AWS Managed Microsoft AD directory.

Before you call I<CreateMicrosoftAD>, ensure that all of the required
permissions have been explicitly granted through a policy. For details
about what permissions are required to run the I<CreateMicrosoftAD>
operation, see AWS Directory Service API Permissions: Actions,
Resources, and Conditions Reference
(http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).


=head2 CreateSnapshot

=over

=item DirectoryId => Str

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::DS::CreateSnapshot>

Returns: a L<Paws::DS::CreateSnapshotResult> instance

Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS
cloud.

You cannot take snapshots of AD Connector directories.


=head2 CreateTrust

=over

=item DirectoryId => Str

=item RemoteDomainName => Str

=item TrustDirection => Str

=item TrustPassword => Str

=item [ConditionalForwarderIpAddrs => ArrayRef[Str|Undef]]

=item [SelectiveAuth => Str]

=item [TrustType => Str]


=back

Each argument is described in detail in: L<Paws::DS::CreateTrust>

Returns: a L<Paws::DS::CreateTrustResult> instance

AWS Directory Service for Microsoft Active Directory allows you to
configure trust relationships. For example, you can establish a trust
between your AWS Managed Microsoft AD directory, and your existing
on-premises Microsoft Active Directory. This would allow you to provide
users and groups access to resources in either domain, with a single
set of credentials.

This action initiates the creation of the AWS side of a trust
relationship between an AWS Managed Microsoft AD directory and an
external domain. You can create either a forest trust or an external
trust.


=head2 DeleteConditionalForwarder

=over

=item DirectoryId => Str

=item RemoteDomainName => Str


=back

Each argument is described in detail in: L<Paws::DS::DeleteConditionalForwarder>

Returns: a L<Paws::DS::DeleteConditionalForwarderResult> instance

Deletes a conditional forwarder that has been set up for your AWS
directory.


=head2 DeleteDirectory

=over

=item DirectoryId => Str


=back

Each argument is described in detail in: L<Paws::DS::DeleteDirectory>

Returns: a L<Paws::DS::DeleteDirectoryResult> instance

Deletes an AWS Directory Service directory.

Before you call C<DeleteDirectory>, ensure that all of the required
permissions have been explicitly granted through a policy. For details
about what permissions are required to run the C<DeleteDirectory>
operation, see AWS Directory Service API Permissions: Actions,
Resources, and Conditions Reference
(http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).


=head2 DeleteLogSubscription

=over

=item DirectoryId => Str


=back

Each argument is described in detail in: L<Paws::DS::DeleteLogSubscription>

Returns: a L<Paws::DS::DeleteLogSubscriptionResult> instance

Deletes the specified log subscription.


=head2 DeleteSnapshot

=over

=item SnapshotId => Str


=back

Each argument is described in detail in: L<Paws::DS::DeleteSnapshot>

Returns: a L<Paws::DS::DeleteSnapshotResult> instance

Deletes a directory snapshot.


=head2 DeleteTrust

=over

=item TrustId => Str

=item [DeleteAssociatedConditionalForwarder => Bool]


=back

Each argument is described in detail in: L<Paws::DS::DeleteTrust>

Returns: a L<Paws::DS::DeleteTrustResult> instance

Deletes an existing trust relationship between your AWS Managed
Microsoft AD directory and an external domain.


=head2 DeregisterEventTopic

=over

=item DirectoryId => Str

=item TopicName => Str


=back

Each argument is described in detail in: L<Paws::DS::DeregisterEventTopic>

Returns: a L<Paws::DS::DeregisterEventTopicResult> instance

Removes the specified directory as a publisher to the specified SNS
topic.


=head2 DescribeConditionalForwarders

=over

=item DirectoryId => Str

=item [RemoteDomainNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DS::DescribeConditionalForwarders>

Returns: a L<Paws::DS::DescribeConditionalForwardersResult> instance

Obtains information about the conditional forwarders for this account.

If no input parameters are provided for RemoteDomainNames, this request
describes all conditional forwarders for the specified directory ID.


=head2 DescribeDirectories

=over

=item [DirectoryIds => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DS::DescribeDirectories>

Returns: a L<Paws::DS::DescribeDirectoriesResult> instance

Obtains information about the directories that belong to this account.

You can retrieve information about specific directories by passing the
directory identifiers in the C<DirectoryIds> parameter. Otherwise, all
directories that belong to the current account are returned.

This operation supports pagination with the use of the C<NextToken>
request and response parameters. If more results are available, the
C<DescribeDirectoriesResult.NextToken> member contains a token that you
pass in the next call to DescribeDirectories to retrieve the next set
of items.

You can also specify a maximum number of return results with the
C<Limit> parameter.


=head2 DescribeDomainControllers

=over

=item DirectoryId => Str

=item [DomainControllerIds => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DS::DescribeDomainControllers>

Returns: a L<Paws::DS::DescribeDomainControllersResult> instance

Provides information about any domain controllers in your directory.


=head2 DescribeEventTopics

=over

=item [DirectoryId => Str]

=item [TopicNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DS::DescribeEventTopics>

Returns: a L<Paws::DS::DescribeEventTopicsResult> instance

Obtains information about which SNS topics receive status messages from
the specified directory.

If no input parameters are provided, such as DirectoryId or TopicName,
this request describes all of the associations in the account.


=head2 DescribeSharedDirectories

=over

=item OwnerDirectoryId => Str

=item [Limit => Int]

=item [NextToken => Str]

=item [SharedDirectoryIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DS::DescribeSharedDirectories>

Returns: a L<Paws::DS::DescribeSharedDirectoriesResult> instance

Returns the shared directories in your account.


=head2 DescribeSnapshots

=over

=item [DirectoryId => Str]

=item [Limit => Int]

=item [NextToken => Str]

=item [SnapshotIds => ArrayRef[Str|Undef]]


=back

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


=head2 DescribeTrusts

=over

=item [DirectoryId => Str]

=item [Limit => Int]

=item [NextToken => Str]

=item [TrustIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DS::DescribeTrusts>

Returns: a L<Paws::DS::DescribeTrustsResult> instance

Obtains information about the trust relationships for this account.

If no input parameters are provided, such as DirectoryId or TrustIds,
this request describes all the trust relationships belonging to the
account.


=head2 DisableRadius

=over

=item DirectoryId => Str


=back

Each argument is described in detail in: L<Paws::DS::DisableRadius>

Returns: a L<Paws::DS::DisableRadiusResult> instance

Disables multi-factor authentication (MFA) with the Remote
Authentication Dial In User Service (RADIUS) server for an AD Connector
or Microsoft AD directory.


=head2 DisableSso

=over

=item DirectoryId => Str

=item [Password => Str]

=item [UserName => Str]


=back

Each argument is described in detail in: L<Paws::DS::DisableSso>

Returns: a L<Paws::DS::DisableSsoResult> instance

Disables single-sign on for a directory.


=head2 EnableRadius

=over

=item DirectoryId => Str

=item RadiusSettings => L<Paws::DS::RadiusSettings>


=back

Each argument is described in detail in: L<Paws::DS::EnableRadius>

Returns: a L<Paws::DS::EnableRadiusResult> instance

Enables multi-factor authentication (MFA) with the Remote
Authentication Dial In User Service (RADIUS) server for an AD Connector
or Microsoft AD directory.


=head2 EnableSso

=over

=item DirectoryId => Str

=item [Password => Str]

=item [UserName => Str]


=back

Each argument is described in detail in: L<Paws::DS::EnableSso>

Returns: a L<Paws::DS::EnableSsoResult> instance

Enables single sign-on for a directory.


=head2 GetDirectoryLimits






Each argument is described in detail in: L<Paws::DS::GetDirectoryLimits>

Returns: a L<Paws::DS::GetDirectoryLimitsResult> instance

Obtains directory limit information for the current region.


=head2 GetSnapshotLimits

=over

=item DirectoryId => Str


=back

Each argument is described in detail in: L<Paws::DS::GetSnapshotLimits>

Returns: a L<Paws::DS::GetSnapshotLimitsResult> instance

Obtains the manual snapshot limits for a directory.


=head2 ListIpRoutes

=over

=item DirectoryId => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DS::ListIpRoutes>

Returns: a L<Paws::DS::ListIpRoutesResult> instance

Lists the address blocks that you have added to a directory.


=head2 ListLogSubscriptions

=over

=item [DirectoryId => Str]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DS::ListLogSubscriptions>

Returns: a L<Paws::DS::ListLogSubscriptionsResult> instance

Lists the active log subscriptions for the AWS account.


=head2 ListSchemaExtensions

=over

=item DirectoryId => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DS::ListSchemaExtensions>

Returns: a L<Paws::DS::ListSchemaExtensionsResult> instance

Lists all schema extensions applied to a Microsoft AD Directory.


=head2 ListTagsForResource

=over

=item ResourceId => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DS::ListTagsForResource>

Returns: a L<Paws::DS::ListTagsForResourceResult> instance

Lists all tags on a directory.


=head2 RegisterEventTopic

=over

=item DirectoryId => Str

=item TopicName => Str


=back

Each argument is described in detail in: L<Paws::DS::RegisterEventTopic>

Returns: a L<Paws::DS::RegisterEventTopicResult> instance

Associates a directory with an SNS topic. This establishes the
directory as a publisher to the specified SNS topic. You can then
receive email or text (SMS) messages when the status of your directory
changes. You get notified if your directory goes from an Active status
to an Impaired or Inoperable status. You also receive a notification
when the directory returns to an Active status.


=head2 RejectSharedDirectory

=over

=item SharedDirectoryId => Str


=back

Each argument is described in detail in: L<Paws::DS::RejectSharedDirectory>

Returns: a L<Paws::DS::RejectSharedDirectoryResult> instance

Rejects a directory sharing request that was sent from the directory
owner account.


=head2 RemoveIpRoutes

=over

=item CidrIps => ArrayRef[Str|Undef]

=item DirectoryId => Str


=back

Each argument is described in detail in: L<Paws::DS::RemoveIpRoutes>

Returns: a L<Paws::DS::RemoveIpRoutesResult> instance

Removes IP address blocks from a directory.


=head2 RemoveTagsFromResource

=over

=item ResourceId => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::DS::RemoveTagsFromResource>

Returns: a L<Paws::DS::RemoveTagsFromResourceResult> instance

Removes tags from a directory.


=head2 ResetUserPassword

=over

=item DirectoryId => Str

=item NewPassword => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::DS::ResetUserPassword>

Returns: a L<Paws::DS::ResetUserPasswordResult> instance

Resets the password for any user in your AWS Managed Microsoft AD or
Simple AD directory.


=head2 RestoreFromSnapshot

=over

=item SnapshotId => Str


=back

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


=head2 ShareDirectory

=over

=item DirectoryId => Str

=item ShareMethod => Str

=item ShareTarget => L<Paws::DS::ShareTarget>

=item [ShareNotes => Str]


=back

Each argument is described in detail in: L<Paws::DS::ShareDirectory>

Returns: a L<Paws::DS::ShareDirectoryResult> instance

Shares a specified directory (C<DirectoryId>) in your AWS account
(directory owner) with another AWS account (directory consumer). With
this operation you can use your directory from any AWS account and from
any Amazon VPC within an AWS Region.

When you share your AWS Managed Microsoft AD directory, AWS Directory
Service creates a shared directory in the directory consumer account.
This shared directory contains the metadata to provide access to the
directory within the directory owner account. The shared directory is
visible in all VPCs in the directory consumer account.

The C<ShareMethod> parameter determines whether the specified directory
can be shared between AWS accounts inside the same AWS organization
(C<ORGANIZATIONS>). It also determines whether you can share the
directory with any other AWS account either inside or outside of the
organization (C<HANDSHAKE>).

The C<ShareNotes> parameter is only used when C<HANDSHAKE> is called,
which sends a directory sharing request to the directory consumer.


=head2 StartSchemaExtension

=over

=item CreateSnapshotBeforeSchemaExtension => Bool

=item Description => Str

=item DirectoryId => Str

=item LdifContent => Str


=back

Each argument is described in detail in: L<Paws::DS::StartSchemaExtension>

Returns: a L<Paws::DS::StartSchemaExtensionResult> instance

Applies a schema extension to a Microsoft AD directory.


=head2 UnshareDirectory

=over

=item DirectoryId => Str

=item UnshareTarget => L<Paws::DS::UnshareTarget>


=back

Each argument is described in detail in: L<Paws::DS::UnshareDirectory>

Returns: a L<Paws::DS::UnshareDirectoryResult> instance

Stops the directory sharing between the directory owner and consumer
accounts.


=head2 UpdateConditionalForwarder

=over

=item DirectoryId => Str

=item DnsIpAddrs => ArrayRef[Str|Undef]

=item RemoteDomainName => Str


=back

Each argument is described in detail in: L<Paws::DS::UpdateConditionalForwarder>

Returns: a L<Paws::DS::UpdateConditionalForwarderResult> instance

Updates a conditional forwarder that has been set up for your AWS
directory.


=head2 UpdateNumberOfDomainControllers

=over

=item DesiredNumber => Int

=item DirectoryId => Str


=back

Each argument is described in detail in: L<Paws::DS::UpdateNumberOfDomainControllers>

Returns: a L<Paws::DS::UpdateNumberOfDomainControllersResult> instance

Adds or removes domain controllers to or from the directory. Based on
the difference between current value and new value (provided through
this API call), domain controllers will be added or removed. It may
take up to 45 minutes for any new domain controllers to become fully
active once the requested number of domain controllers is updated.
During this time, you cannot make another update request.


=head2 UpdateRadius

=over

=item DirectoryId => Str

=item RadiusSettings => L<Paws::DS::RadiusSettings>


=back

Each argument is described in detail in: L<Paws::DS::UpdateRadius>

Returns: a L<Paws::DS::UpdateRadiusResult> instance

Updates the Remote Authentication Dial In User Service (RADIUS) server
information for an AD Connector or Microsoft AD directory.


=head2 UpdateTrust

=over

=item TrustId => Str

=item [SelectiveAuth => Str]


=back

Each argument is described in detail in: L<Paws::DS::UpdateTrust>

Returns: a L<Paws::DS::UpdateTrustResult> instance

Updates the trust that has been set up between your AWS Managed
Microsoft AD directory and an on-premises Active Directory.


=head2 VerifyTrust

=over

=item TrustId => Str


=back

Each argument is described in detail in: L<Paws::DS::VerifyTrust>

Returns: a L<Paws::DS::VerifyTrustResult> instance

AWS Directory Service for Microsoft Active Directory allows you to
configure and verify trust relationships.

This action verifies a trust relationship between your AWS Managed
Microsoft AD directory and an external domain.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllDirectories(sub { },[DirectoryIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

=head2 DescribeAllDirectories([DirectoryIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DirectoryDescriptions, passing the object as the first parameter, and the string 'DirectoryDescriptions' as the second parameter 

If not, it will return a a L<Paws::DS::DescribeDirectoriesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDomainControllers(sub { },DirectoryId => Str, [DomainControllerIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

=head2 DescribeAllDomainControllers(DirectoryId => Str, [DomainControllerIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DomainControllers, passing the object as the first parameter, and the string 'DomainControllers' as the second parameter 

If not, it will return a a L<Paws::DS::DescribeDomainControllersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSharedDirectories(sub { },OwnerDirectoryId => Str, [Limit => Int, NextToken => Str, SharedDirectoryIds => ArrayRef[Str|Undef]])

=head2 DescribeAllSharedDirectories(OwnerDirectoryId => Str, [Limit => Int, NextToken => Str, SharedDirectoryIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SharedDirectories, passing the object as the first parameter, and the string 'SharedDirectories' as the second parameter 

If not, it will return a a L<Paws::DS::DescribeSharedDirectoriesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSnapshots(sub { },[DirectoryId => Str, Limit => Int, NextToken => Str, SnapshotIds => ArrayRef[Str|Undef]])

=head2 DescribeAllSnapshots([DirectoryId => Str, Limit => Int, NextToken => Str, SnapshotIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Snapshots, passing the object as the first parameter, and the string 'Snapshots' as the second parameter 

If not, it will return a a L<Paws::DS::DescribeSnapshotsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTrusts(sub { },[DirectoryId => Str, Limit => Int, NextToken => Str, TrustIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTrusts([DirectoryId => Str, Limit => Int, NextToken => Str, TrustIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Trusts, passing the object as the first parameter, and the string 'Trusts' as the second parameter 

If not, it will return a a L<Paws::DS::DescribeTrustsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIpRoutes(sub { },DirectoryId => Str, [Limit => Int, NextToken => Str])

=head2 ListAllIpRoutes(DirectoryId => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IpRoutesInfo, passing the object as the first parameter, and the string 'IpRoutesInfo' as the second parameter 

If not, it will return a a L<Paws::DS::ListIpRoutesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLogSubscriptions(sub { },[DirectoryId => Str, Limit => Int, NextToken => Str])

=head2 ListAllLogSubscriptions([DirectoryId => Str, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LogSubscriptions, passing the object as the first parameter, and the string 'LogSubscriptions' as the second parameter 

If not, it will return a a L<Paws::DS::ListLogSubscriptionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSchemaExtensions(sub { },DirectoryId => Str, [Limit => Int, NextToken => Str])

=head2 ListAllSchemaExtensions(DirectoryId => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SchemaExtensionsInfo, passing the object as the first parameter, and the string 'SchemaExtensionsInfo' as the second parameter 

If not, it will return a a L<Paws::DS::ListSchemaExtensionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceId => Str, [Limit => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceId => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::DS::ListTagsForResourceResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

