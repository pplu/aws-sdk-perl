package Paws::AppStream;
  use Moose;
  sub service { 'appstream2' }
  sub signing_name { 'appstream' }
  sub version { '2016-12-01' }
  sub target_prefix { 'PhotonAdminProxyService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::AssociateFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchAssociateUserStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::BatchAssociateUserStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDisassociateUserStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::BatchDisassociateUserStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::CopyImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDirectoryConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::CreateDirectoryConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::CreateFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateImageBuilder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::CreateImageBuilder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateImageBuilderStreamingURL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::CreateImageBuilderStreamingURL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::CreateStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStreamingURL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::CreateStreamingURL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDirectoryConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DeleteDirectoryConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DeleteFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DeleteImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImageBuilder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DeleteImageBuilder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImagePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DeleteImagePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DeleteStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDirectoryConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DescribeDirectoryConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DescribeFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImageBuilders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DescribeImageBuilders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImagePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DescribeImagePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DescribeImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DescribeSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStacks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DescribeStacks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DescribeUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserStackAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DescribeUserStackAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DisableUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DisassociateFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::EnableUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExpireSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::ExpireSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociatedFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::ListAssociatedFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociatedStacks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::ListAssociatedStacks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::StartFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartImageBuilder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::StartImageBuilder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::StopFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopImageBuilder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::StopImageBuilder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDirectoryConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::UpdateDirectoryConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::UpdateFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateImagePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::UpdateImagePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::UpdateStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllDirectoryConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDirectoryConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeDirectoryConfigs(@_, NextToken => $next_result->NextToken);
        push @{ $result->DirectoryConfigs }, @{ $next_result->DirectoryConfigs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DirectoryConfigs') foreach (@{ $result->DirectoryConfigs });
        $result = $self->DescribeDirectoryConfigs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DirectoryConfigs') foreach (@{ $result->DirectoryConfigs });
    }

    return undef
  }
  sub DescribeAllFleets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFleets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFleets(@_, NextToken => $next_result->NextToken);
        push @{ $result->Fleets }, @{ $next_result->Fleets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Fleets') foreach (@{ $result->Fleets });
        $result = $self->DescribeFleets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Fleets') foreach (@{ $result->Fleets });
    }

    return undef
  }
  sub DescribeAllImageBuilders {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeImageBuilders(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeImageBuilders(@_, NextToken => $next_result->NextToken);
        push @{ $result->ImageBuilders }, @{ $next_result->ImageBuilders };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ImageBuilders') foreach (@{ $result->ImageBuilders });
        $result = $self->DescribeImageBuilders(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ImageBuilders') foreach (@{ $result->ImageBuilders });
    }

    return undef
  }
  sub DescribeAllImages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeImages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeImages(@_, NextToken => $next_result->NextToken);
        push @{ $result->Images }, @{ $next_result->Images };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Images') foreach (@{ $result->Images });
        $result = $self->DescribeImages(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Images') foreach (@{ $result->Images });
    }

    return undef
  }
  sub DescribeAllSessions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSessions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSessions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Sessions }, @{ $next_result->Sessions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Sessions') foreach (@{ $result->Sessions });
        $result = $self->DescribeSessions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Sessions') foreach (@{ $result->Sessions });
    }

    return undef
  }
  sub DescribeAllStacks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeStacks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeStacks(@_, NextToken => $next_result->NextToken);
        push @{ $result->Stacks }, @{ $next_result->Stacks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Stacks') foreach (@{ $result->Stacks });
        $result = $self->DescribeStacks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Stacks') foreach (@{ $result->Stacks });
    }

    return undef
  }
  sub DescribeAllUsers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeUsers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeUsers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Users }, @{ $next_result->Users };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Users') foreach (@{ $result->Users });
        $result = $self->DescribeUsers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Users') foreach (@{ $result->Users });
    }

    return undef
  }
  sub DescribeAllUserStackAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeUserStackAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeUserStackAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->UserStackAssociations }, @{ $next_result->UserStackAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UserStackAssociations') foreach (@{ $result->UserStackAssociations });
        $result = $self->DescribeUserStackAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UserStackAssociations') foreach (@{ $result->UserStackAssociations });
    }

    return undef
  }
  sub ListAllAssociatedFleets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssociatedFleets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAssociatedFleets(@_, NextToken => $next_result->NextToken);
        push @{ $result->Names }, @{ $next_result->Names };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Names') foreach (@{ $result->Names });
        $result = $self->ListAssociatedFleets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Names') foreach (@{ $result->Names });
    }

    return undef
  }
  sub ListAllAssociatedStacks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssociatedStacks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAssociatedStacks(@_, NextToken => $next_result->NextToken);
        push @{ $result->Names }, @{ $next_result->Names };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Names') foreach (@{ $result->Names });
        $result = $self->ListAssociatedStacks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Names') foreach (@{ $result->Names });
    }

    return undef
  }


  sub operations { qw/AssociateFleet BatchAssociateUserStack BatchDisassociateUserStack CopyImage CreateDirectoryConfig CreateFleet CreateImageBuilder CreateImageBuilderStreamingURL CreateStack CreateStreamingURL CreateUser DeleteDirectoryConfig DeleteFleet DeleteImage DeleteImageBuilder DeleteImagePermissions DeleteStack DeleteUser DescribeDirectoryConfigs DescribeFleets DescribeImageBuilders DescribeImagePermissions DescribeImages DescribeSessions DescribeStacks DescribeUsers DescribeUserStackAssociations DisableUser DisassociateFleet EnableUser ExpireSession ListAssociatedFleets ListAssociatedStacks ListTagsForResource StartFleet StartImageBuilder StopFleet StopImageBuilder TagResource UntagResource UpdateDirectoryConfig UpdateFleet UpdateImagePermissions UpdateStack / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream - Perl Interface to AWS Amazon AppStream

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AppStream');
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

Amazon AppStream 2.0

This is the I<Amazon AppStream 2.0 API Reference>. It provides
descriptions and syntax for each of the actions and data types in
AppStream 2.0. AppStream 2.0 is a fully managed application streaming
service. You centrally manage your desktop applications on AppStream
2.0 and securely deliver them to any computer. AppStream 2.0 manages
the AWS resources required to host and run your applications, scales
automatically, and provides access to your users on demand.

To learn more about AppStream 2.0, see the following resources:

=over

=item *

Amazon AppStream 2.0 product page (http://aws.amazon.com/appstream2)

=item *

Amazon AppStream 2.0 documentation
(http://aws.amazon.com/documentation/appstream2)

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2-2016-12-01>


=head1 METHODS

=head2 AssociateFleet

=over

=item FleetName => Str

=item StackName => Str


=back

Each argument is described in detail in: L<Paws::AppStream::AssociateFleet>

Returns: a L<Paws::AppStream::AssociateFleetResult> instance

Associates the specified fleet with the specified stack.


=head2 BatchAssociateUserStack

=over

=item UserStackAssociations => ArrayRef[L<Paws::AppStream::UserStackAssociation>]


=back

Each argument is described in detail in: L<Paws::AppStream::BatchAssociateUserStack>

Returns: a L<Paws::AppStream::BatchAssociateUserStackResult> instance

Associates the specified users with the specified stacks. Users in a
user pool cannot be assigned to stacks with fleets that are joined to
an Active Directory domain.


=head2 BatchDisassociateUserStack

=over

=item UserStackAssociations => ArrayRef[L<Paws::AppStream::UserStackAssociation>]


=back

Each argument is described in detail in: L<Paws::AppStream::BatchDisassociateUserStack>

Returns: a L<Paws::AppStream::BatchDisassociateUserStackResult> instance

Disassociates the specified users from the specified stacks.


=head2 CopyImage

=over

=item DestinationImageName => Str

=item DestinationRegion => Str

=item SourceImageName => Str

=item [DestinationImageDescription => Str]


=back

Each argument is described in detail in: L<Paws::AppStream::CopyImage>

Returns: a L<Paws::AppStream::CopyImageResponse> instance

Copies the image within the same region or to a new region within the
same AWS account. Note that any tags you added to the image will not be
copied.


=head2 CreateDirectoryConfig

=over

=item DirectoryName => Str

=item OrganizationalUnitDistinguishedNames => ArrayRef[Str|Undef]

=item ServiceAccountCredentials => L<Paws::AppStream::ServiceAccountCredentials>


=back

Each argument is described in detail in: L<Paws::AppStream::CreateDirectoryConfig>

Returns: a L<Paws::AppStream::CreateDirectoryConfigResult> instance

Creates a Directory Config object in AppStream 2.0. This object
includes the information required to join streaming instances to an
Active Directory domain.


=head2 CreateFleet

=over

=item ComputeCapacity => L<Paws::AppStream::ComputeCapacity>

=item InstanceType => Str

=item Name => Str

=item [Description => Str]

=item [DisconnectTimeoutInSeconds => Int]

=item [DisplayName => Str]

=item [DomainJoinInfo => L<Paws::AppStream::DomainJoinInfo>]

=item [EnableDefaultInternetAccess => Bool]

=item [FleetType => Str]

=item [ImageArn => Str]

=item [ImageName => Str]

=item [MaxUserDurationInSeconds => Int]

=item [Tags => L<Paws::AppStream::Tags>]

=item [VpcConfig => L<Paws::AppStream::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::AppStream::CreateFleet>

Returns: a L<Paws::AppStream::CreateFleetResult> instance

Creates a fleet. A fleet consists of streaming instances that run a
specified image.


=head2 CreateImageBuilder

=over

=item InstanceType => Str

=item Name => Str

=item [AppstreamAgentVersion => Str]

=item [Description => Str]

=item [DisplayName => Str]

=item [DomainJoinInfo => L<Paws::AppStream::DomainJoinInfo>]

=item [EnableDefaultInternetAccess => Bool]

=item [ImageArn => Str]

=item [ImageName => Str]

=item [Tags => L<Paws::AppStream::Tags>]

=item [VpcConfig => L<Paws::AppStream::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::AppStream::CreateImageBuilder>

Returns: a L<Paws::AppStream::CreateImageBuilderResult> instance

Creates an image builder. An image builder is a virtual machine that is
used to create an image.

The initial state of the builder is C<PENDING>. When it is ready, the
state is C<RUNNING>.


=head2 CreateImageBuilderStreamingURL

=over

=item Name => Str

=item [Validity => Int]


=back

Each argument is described in detail in: L<Paws::AppStream::CreateImageBuilderStreamingURL>

Returns: a L<Paws::AppStream::CreateImageBuilderStreamingURLResult> instance

Creates a URL to start an image builder streaming session.


=head2 CreateStack

=over

=item Name => Str

=item [ApplicationSettings => L<Paws::AppStream::ApplicationSettings>]

=item [Description => Str]

=item [DisplayName => Str]

=item [FeedbackURL => Str]

=item [RedirectURL => Str]

=item [StorageConnectors => ArrayRef[L<Paws::AppStream::StorageConnector>]]

=item [Tags => L<Paws::AppStream::Tags>]

=item [UserSettings => ArrayRef[L<Paws::AppStream::UserSetting>]]


=back

Each argument is described in detail in: L<Paws::AppStream::CreateStack>

Returns: a L<Paws::AppStream::CreateStackResult> instance

Creates a stack to start streaming applications to users. A stack
consists of an associated fleet, user access policies, and storage
configurations.


=head2 CreateStreamingURL

=over

=item FleetName => Str

=item StackName => Str

=item UserId => Str

=item [ApplicationId => Str]

=item [SessionContext => Str]

=item [Validity => Int]


=back

Each argument is described in detail in: L<Paws::AppStream::CreateStreamingURL>

Returns: a L<Paws::AppStream::CreateStreamingURLResult> instance

Creates a temporary URL to start an AppStream 2.0 streaming session for
the specified user. A streaming URL enables application streaming to be
tested without user setup.


=head2 CreateUser

=over

=item AuthenticationType => Str

=item UserName => Str

=item [FirstName => Str]

=item [LastName => Str]

=item [MessageAction => Str]


=back

Each argument is described in detail in: L<Paws::AppStream::CreateUser>

Returns: a L<Paws::AppStream::CreateUserResult> instance

Creates a new user in the user pool.


=head2 DeleteDirectoryConfig

=over

=item DirectoryName => Str


=back

Each argument is described in detail in: L<Paws::AppStream::DeleteDirectoryConfig>

Returns: a L<Paws::AppStream::DeleteDirectoryConfigResult> instance

Deletes the specified Directory Config object from AppStream 2.0. This
object includes the information required to join streaming instances to
an Active Directory domain.


=head2 DeleteFleet

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::AppStream::DeleteFleet>

Returns: a L<Paws::AppStream::DeleteFleetResult> instance

Deletes the specified fleet.


=head2 DeleteImage

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::AppStream::DeleteImage>

Returns: a L<Paws::AppStream::DeleteImageResult> instance

Deletes the specified image. You cannot delete an image when it is in
use. After you delete an image, you cannot provision new capacity using
the image.


=head2 DeleteImageBuilder

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::AppStream::DeleteImageBuilder>

Returns: a L<Paws::AppStream::DeleteImageBuilderResult> instance

Deletes the specified image builder and releases the capacity.


=head2 DeleteImagePermissions

=over

=item Name => Str

=item SharedAccountId => Str


=back

Each argument is described in detail in: L<Paws::AppStream::DeleteImagePermissions>

Returns: a L<Paws::AppStream::DeleteImagePermissionsResult> instance

Deletes permissions for the specified private image. After you delete
permissions for an image, AWS accounts to which you previously granted
these permissions can no longer use the image.


=head2 DeleteStack

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::AppStream::DeleteStack>

Returns: a L<Paws::AppStream::DeleteStackResult> instance

Deletes the specified stack. After the stack is deleted, the
application streaming environment provided by the stack is no longer
available to users. Also, any reservations made for application
streaming sessions for the stack are released.


=head2 DeleteUser

=over

=item AuthenticationType => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::AppStream::DeleteUser>

Returns: a L<Paws::AppStream::DeleteUserResult> instance

Deletes a user from the user pool.


=head2 DescribeDirectoryConfigs

=over

=item [DirectoryNames => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppStream::DescribeDirectoryConfigs>

Returns: a L<Paws::AppStream::DescribeDirectoryConfigsResult> instance

Retrieves a list that describes one or more specified Directory Config
objects for AppStream 2.0, if the names for these objects are provided.
Otherwise, all Directory Config objects in the account are described.
These objects include the information required to join streaming
instances to an Active Directory domain.

Although the response syntax in this topic includes the account
password, this password is not returned in the actual response.


=head2 DescribeFleets

=over

=item [Names => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppStream::DescribeFleets>

Returns: a L<Paws::AppStream::DescribeFleetsResult> instance

Retrieves a list that describes one or more specified fleets, if the
fleet names are provided. Otherwise, all fleets in the account are
described.


=head2 DescribeImageBuilders

=over

=item [MaxResults => Int]

=item [Names => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppStream::DescribeImageBuilders>

Returns: a L<Paws::AppStream::DescribeImageBuildersResult> instance

Retrieves a list that describes one or more specified image builders,
if the image builder names are provided. Otherwise, all image builders
in the account are described.


=head2 DescribeImagePermissions

=over

=item Name => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SharedAwsAccountIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::AppStream::DescribeImagePermissions>

Returns: a L<Paws::AppStream::DescribeImagePermissionsResult> instance

Retrieves a list that describes the permissions for shared AWS account
IDs on a private image that you own.


=head2 DescribeImages

=over

=item [Arns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [Names => ArrayRef[Str|Undef]]

=item [NextToken => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::AppStream::DescribeImages>

Returns: a L<Paws::AppStream::DescribeImagesResult> instance

Retrieves a list that describes one or more specified images, if the
image names or image ARNs are provided. Otherwise, all images in the
account are described.


=head2 DescribeSessions

=over

=item FleetName => Str

=item StackName => Str

=item [AuthenticationType => Str]

=item [Limit => Int]

=item [NextToken => Str]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::AppStream::DescribeSessions>

Returns: a L<Paws::AppStream::DescribeSessionsResult> instance

Retrieves a list that describes the streaming sessions for a specified
stack and fleet. If a UserId is provided for the stack and fleet, only
streaming sessions for that user are described. If an authentication
type is not provided, the default is to authenticate users using a
streaming URL.


=head2 DescribeStacks

=over

=item [Names => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppStream::DescribeStacks>

Returns: a L<Paws::AppStream::DescribeStacksResult> instance

Retrieves a list that describes one or more specified stacks, if the
stack names are provided. Otherwise, all stacks in the account are
described.


=head2 DescribeUsers

=over

=item AuthenticationType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppStream::DescribeUsers>

Returns: a L<Paws::AppStream::DescribeUsersResult> instance

Retrieves a list that describes one or more specified users in the user
pool.


=head2 DescribeUserStackAssociations

=over

=item [AuthenticationType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StackName => Str]

=item [UserName => Str]


=back

Each argument is described in detail in: L<Paws::AppStream::DescribeUserStackAssociations>

Returns: a L<Paws::AppStream::DescribeUserStackAssociationsResult> instance

Retrieves a list that describes the UserStackAssociation objects. You
must specify either or both of the following:

=over

=item *

The stack name

=item *

The user name (email address of the user associated with the stack) and
the authentication type for the user

=back



=head2 DisableUser

=over

=item AuthenticationType => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::AppStream::DisableUser>

Returns: a L<Paws::AppStream::DisableUserResult> instance

Disables the specified user in the user pool. Users can't sign in to
AppStream 2.0 until they are re-enabled. This action does not delete
the user.


=head2 DisassociateFleet

=over

=item FleetName => Str

=item StackName => Str


=back

Each argument is described in detail in: L<Paws::AppStream::DisassociateFleet>

Returns: a L<Paws::AppStream::DisassociateFleetResult> instance

Disassociates the specified fleet from the specified stack.


=head2 EnableUser

=over

=item AuthenticationType => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::AppStream::EnableUser>

Returns: a L<Paws::AppStream::EnableUserResult> instance

Enables a user in the user pool. After being enabled, users can sign in
to AppStream 2.0 and open applications from the stacks to which they
are assigned.


=head2 ExpireSession

=over

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::AppStream::ExpireSession>

Returns: a L<Paws::AppStream::ExpireSessionResult> instance

Immediately stops the specified streaming session.


=head2 ListAssociatedFleets

=over

=item StackName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppStream::ListAssociatedFleets>

Returns: a L<Paws::AppStream::ListAssociatedFleetsResult> instance

Retrieves the name of the fleet that is associated with the specified
stack.


=head2 ListAssociatedStacks

=over

=item FleetName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppStream::ListAssociatedStacks>

Returns: a L<Paws::AppStream::ListAssociatedStacksResult> instance

Retrieves the name of the stack with which the specified fleet is
associated.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AppStream::ListTagsForResource>

Returns: a L<Paws::AppStream::ListTagsForResourceResponse> instance

Retrieves a list of all tags for the specified AppStream 2.0 resource.
You can tag AppStream 2.0 image builders, images, fleets, and stacks.

For more information about tags, see Tagging Your Resources
(http://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
in the I<Amazon AppStream 2.0 Developer Guide>.


=head2 StartFleet

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::AppStream::StartFleet>

Returns: a L<Paws::AppStream::StartFleetResult> instance

Starts the specified fleet.


=head2 StartImageBuilder

=over

=item Name => Str

=item [AppstreamAgentVersion => Str]


=back

Each argument is described in detail in: L<Paws::AppStream::StartImageBuilder>

Returns: a L<Paws::AppStream::StartImageBuilderResult> instance

Starts the specified image builder.


=head2 StopFleet

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::AppStream::StopFleet>

Returns: a L<Paws::AppStream::StopFleetResult> instance

Stops the specified fleet.


=head2 StopImageBuilder

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::AppStream::StopImageBuilder>

Returns: a L<Paws::AppStream::StopImageBuilderResult> instance

Stops the specified image builder.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::AppStream::Tags>


=back

Each argument is described in detail in: L<Paws::AppStream::TagResource>

Returns: a L<Paws::AppStream::TagResourceResponse> instance

Adds or overwrites one or more tags for the specified AppStream 2.0
resource. You can tag AppStream 2.0 image builders, images, fleets, and
stacks.

Each tag consists of a key and an optional value. If a resource already
has a tag with the same key, this operation updates its value.

To list the current tags for your resources, use ListTagsForResource.
To disassociate tags from your resources, use UntagResource.

For more information about tags, see Tagging Your Resources
(http://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
in the I<Amazon AppStream 2.0 Developer Guide>.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AppStream::UntagResource>

Returns: a L<Paws::AppStream::UntagResourceResponse> instance

Disassociates one or more specified tags from the specified AppStream
2.0 resource.

To list the current tags for your resources, use ListTagsForResource.

For more information about tags, see Tagging Your Resources
(http://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
in the I<Amazon AppStream 2.0 Developer Guide>.


=head2 UpdateDirectoryConfig

=over

=item DirectoryName => Str

=item [OrganizationalUnitDistinguishedNames => ArrayRef[Str|Undef]]

=item [ServiceAccountCredentials => L<Paws::AppStream::ServiceAccountCredentials>]


=back

Each argument is described in detail in: L<Paws::AppStream::UpdateDirectoryConfig>

Returns: a L<Paws::AppStream::UpdateDirectoryConfigResult> instance

Updates the specified Directory Config object in AppStream 2.0. This
object includes the information required to join streaming instances to
an Active Directory domain.


=head2 UpdateFleet

=over

=item [AttributesToDelete => ArrayRef[Str|Undef]]

=item [ComputeCapacity => L<Paws::AppStream::ComputeCapacity>]

=item [DeleteVpcConfig => Bool]

=item [Description => Str]

=item [DisconnectTimeoutInSeconds => Int]

=item [DisplayName => Str]

=item [DomainJoinInfo => L<Paws::AppStream::DomainJoinInfo>]

=item [EnableDefaultInternetAccess => Bool]

=item [ImageArn => Str]

=item [ImageName => Str]

=item [InstanceType => Str]

=item [MaxUserDurationInSeconds => Int]

=item [Name => Str]

=item [VpcConfig => L<Paws::AppStream::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::AppStream::UpdateFleet>

Returns: a L<Paws::AppStream::UpdateFleetResult> instance

Updates the specified fleet.

If the fleet is in the C<STOPPED> state, you can update any attribute
except the fleet name. If the fleet is in the C<RUNNING> state, you can
update the C<DisplayName> and C<ComputeCapacity> attributes. If the
fleet is in the C<STARTING> or C<STOPPING> state, you can't update it.


=head2 UpdateImagePermissions

=over

=item ImagePermissions => L<Paws::AppStream::ImagePermissions>

=item Name => Str

=item SharedAccountId => Str


=back

Each argument is described in detail in: L<Paws::AppStream::UpdateImagePermissions>

Returns: a L<Paws::AppStream::UpdateImagePermissionsResult> instance

Adds or updates permissions for the specified private image.


=head2 UpdateStack

=over

=item Name => Str

=item [ApplicationSettings => L<Paws::AppStream::ApplicationSettings>]

=item [AttributesToDelete => ArrayRef[Str|Undef]]

=item [DeleteStorageConnectors => Bool]

=item [Description => Str]

=item [DisplayName => Str]

=item [FeedbackURL => Str]

=item [RedirectURL => Str]

=item [StorageConnectors => ArrayRef[L<Paws::AppStream::StorageConnector>]]

=item [UserSettings => ArrayRef[L<Paws::AppStream::UserSetting>]]


=back

Each argument is described in detail in: L<Paws::AppStream::UpdateStack>

Returns: a L<Paws::AppStream::UpdateStackResult> instance

Updates the specified fields for the specified stack.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllDirectoryConfigs(sub { },[DirectoryNames => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllDirectoryConfigs([DirectoryNames => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DirectoryConfigs, passing the object as the first parameter, and the string 'DirectoryConfigs' as the second parameter 

If not, it will return a a L<Paws::AppStream::DescribeDirectoryConfigsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFleets(sub { },[Names => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllFleets([Names => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Fleets, passing the object as the first parameter, and the string 'Fleets' as the second parameter 

If not, it will return a a L<Paws::AppStream::DescribeFleetsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllImageBuilders(sub { },[MaxResults => Int, Names => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllImageBuilders([MaxResults => Int, Names => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ImageBuilders, passing the object as the first parameter, and the string 'ImageBuilders' as the second parameter 

If not, it will return a a L<Paws::AppStream::DescribeImageBuildersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllImages(sub { },[Arns => ArrayRef[Str|Undef], MaxResults => Int, Names => ArrayRef[Str|Undef], NextToken => Str, Type => Str])

=head2 DescribeAllImages([Arns => ArrayRef[Str|Undef], MaxResults => Int, Names => ArrayRef[Str|Undef], NextToken => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Images, passing the object as the first parameter, and the string 'Images' as the second parameter 

If not, it will return a a L<Paws::AppStream::DescribeImagesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSessions(sub { },FleetName => Str, StackName => Str, [AuthenticationType => Str, Limit => Int, NextToken => Str, UserId => Str])

=head2 DescribeAllSessions(FleetName => Str, StackName => Str, [AuthenticationType => Str, Limit => Int, NextToken => Str, UserId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Sessions, passing the object as the first parameter, and the string 'Sessions' as the second parameter 

If not, it will return a a L<Paws::AppStream::DescribeSessionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllStacks(sub { },[Names => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllStacks([Names => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Stacks, passing the object as the first parameter, and the string 'Stacks' as the second parameter 

If not, it will return a a L<Paws::AppStream::DescribeStacksResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllUsers(sub { },AuthenticationType => Str, [MaxResults => Int, NextToken => Str])

=head2 DescribeAllUsers(AuthenticationType => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::AppStream::DescribeUsersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllUserStackAssociations(sub { },[AuthenticationType => Str, MaxResults => Int, NextToken => Str, StackName => Str, UserName => Str])

=head2 DescribeAllUserStackAssociations([AuthenticationType => Str, MaxResults => Int, NextToken => Str, StackName => Str, UserName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserStackAssociations, passing the object as the first parameter, and the string 'UserStackAssociations' as the second parameter 

If not, it will return a a L<Paws::AppStream::DescribeUserStackAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssociatedFleets(sub { },StackName => Str, [NextToken => Str])

=head2 ListAllAssociatedFleets(StackName => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Names, passing the object as the first parameter, and the string 'Names' as the second parameter 

If not, it will return a a L<Paws::AppStream::ListAssociatedFleetsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssociatedStacks(sub { },FleetName => Str, [NextToken => Str])

=head2 ListAllAssociatedStacks(FleetName => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Names, passing the object as the first parameter, and the string 'Names' as the second parameter 

If not, it will return a a L<Paws::AppStream::ListAssociatedStacksResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

