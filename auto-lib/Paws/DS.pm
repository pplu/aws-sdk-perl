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

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
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
  sub DescribeDirectories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::DescribeDirectories', @_);
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
  sub RestoreFromSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DS::RestoreFromSnapshot', @_);
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

  sub operations { qw/ConnectDirectory CreateAlias CreateComputer CreateDirectory CreateMicrosoftAD CreateSnapshot CreateTrust DeleteDirectory DeleteSnapshot DeleteTrust DescribeDirectories DescribeSnapshots DescribeTrusts DisableRadius DisableSso EnableRadius EnableSso GetDirectoryLimits GetSnapshotLimits RestoreFromSnapshot UpdateRadius VerifyTrust / }

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

This is the I<AWS Directory Service API Reference>. This guide provides
detailed information about AWS Directory Service operations, data
types, parameters, and errors.

=head1 METHODS

=head2 ConnectDirectory(ConnectSettings => L<Paws::DS::DirectoryConnectSettings>, Name => Str, Password => Str, Size => Str, [Description => Str, ShortName => Str])

Each argument is described in detail in: L<Paws::DS::ConnectDirectory>

Returns: a L<Paws::DS::ConnectDirectoryResult> instance

  Creates an AD Connector to connect to an on-premises directory.


=head2 CreateAlias(Alias => Str, DirectoryId => Str)

Each argument is described in detail in: L<Paws::DS::CreateAlias>

Returns: a L<Paws::DS::CreateAliasResult> instance

  Creates an alias for a directory and assigns the alias to the
directory. The alias is used to construct the access URL for the
directory, such as C<http://alias.awsapps.com>.

After an alias has been created, it cannot be deleted or reused, so
this operation should only be used when absolutely necessary.


=head2 CreateComputer(ComputerName => Str, DirectoryId => Str, Password => Str, [ComputerAttributes => ArrayRef[L<Paws::DS::Attribute>], OrganizationalUnitDistinguishedName => Str])

Each argument is described in detail in: L<Paws::DS::CreateComputer>

Returns: a L<Paws::DS::CreateComputerResult> instance

  Creates a computer account in the specified directory, and joins the
computer to the directory.


=head2 CreateDirectory(Name => Str, Password => Str, Size => Str, [Description => Str, ShortName => Str, VpcSettings => L<Paws::DS::DirectoryVpcSettings>])

Each argument is described in detail in: L<Paws::DS::CreateDirectory>

Returns: a L<Paws::DS::CreateDirectoryResult> instance

  Creates a Simple AD directory.


=head2 CreateMicrosoftAD(Name => Str, Password => Str, VpcSettings => L<Paws::DS::DirectoryVpcSettings>, [Description => Str, ShortName => Str])

Each argument is described in detail in: L<Paws::DS::CreateMicrosoftAD>

Returns: a L<Paws::DS::CreateMicrosoftADResult> instance

  Creates a Microsoft AD in the AWS cloud.


=head2 CreateSnapshot(DirectoryId => Str, [Name => Str])

Each argument is described in detail in: L<Paws::DS::CreateSnapshot>

Returns: a L<Paws::DS::CreateSnapshotResult> instance

  Creates a snapshot of a Simple AD directory.

You cannot take snapshots of AD Connector directories.


=head2 CreateTrust(DirectoryId => Str, RemoteDomainName => Str, TrustDirection => Str, TrustPassword => Str, [TrustType => Str])

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


=head2 DeleteDirectory(DirectoryId => Str)

Each argument is described in detail in: L<Paws::DS::DeleteDirectory>

Returns: a L<Paws::DS::DeleteDirectoryResult> instance

  Deletes an AWS Directory Service directory.


=head2 DeleteSnapshot(SnapshotId => Str)

Each argument is described in detail in: L<Paws::DS::DeleteSnapshot>

Returns: a L<Paws::DS::DeleteSnapshotResult> instance

  Deletes a directory snapshot.


=head2 DeleteTrust(TrustId => Str)

Each argument is described in detail in: L<Paws::DS::DeleteTrust>

Returns: a L<Paws::DS::DeleteTrustResult> instance

  Deletes an existing trust relationship between your Microsoft AD in the
AWS cloud and an external domain.


=head2 DescribeDirectories([DirectoryIds => ArrayRef[Str], Limit => Int, NextToken => Str])

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


=head2 DescribeSnapshots([DirectoryId => Str, Limit => Int, NextToken => Str, SnapshotIds => ArrayRef[Str]])

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


=head2 DescribeTrusts([DirectoryId => Str, Limit => Int, NextToken => Str, TrustIds => ArrayRef[Str]])

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

  Enables single-sign on for a directory.


=head2 GetDirectoryLimits()

Each argument is described in detail in: L<Paws::DS::GetDirectoryLimits>

Returns: a L<Paws::DS::GetDirectoryLimitsResult> instance

  Obtains directory limit information for the current region.


=head2 GetSnapshotLimits(DirectoryId => Str)

Each argument is described in detail in: L<Paws::DS::GetSnapshotLimits>

Returns: a L<Paws::DS::GetSnapshotLimitsResult> instance

  Obtains the manual snapshot limits for a directory.


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


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

