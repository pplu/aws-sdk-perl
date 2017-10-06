package Paws::AppStream;
  use Moose;
  sub service { 'appstream2' }
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
  sub DeleteStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DeleteStack', @_);
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
  sub DisassociateFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::DisassociateFleet', @_);
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
  sub UpdateStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::UpdateStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateFleet CreateDirectoryConfig CreateFleet CreateImageBuilder CreateImageBuilderStreamingURL CreateStack CreateStreamingURL DeleteDirectoryConfig DeleteFleet DeleteImage DeleteImageBuilder DeleteStack DescribeDirectoryConfigs DescribeFleets DescribeImageBuilders DescribeImages DescribeSessions DescribeStacks DisassociateFleet ExpireSession ListAssociatedFleets ListAssociatedStacks StartFleet StartImageBuilder StopFleet StopImageBuilder UpdateDirectoryConfig UpdateFleet UpdateStack / }

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

You can use Amazon AppStream 2.0 to stream desktop applications to any
device running a web browser, without rewriting them.

=head1 METHODS

=head2 AssociateFleet(FleetName => Str, StackName => Str)

Each argument is described in detail in: L<Paws::AppStream::AssociateFleet>

Returns: a L<Paws::AppStream::AssociateFleetResult> instance

  Associates the specified fleet with the specified stack.


=head2 CreateDirectoryConfig(DirectoryName => Str, OrganizationalUnitDistinguishedNames => ArrayRef[Str|Undef], ServiceAccountCredentials => L<Paws::AppStream::ServiceAccountCredentials>)

Each argument is described in detail in: L<Paws::AppStream::CreateDirectoryConfig>

Returns: a L<Paws::AppStream::CreateDirectoryConfigResult> instance

  Creates a directory configuration.


=head2 CreateFleet(ComputeCapacity => L<Paws::AppStream::ComputeCapacity>, ImageName => Str, InstanceType => Str, Name => Str, [Description => Str, DisconnectTimeoutInSeconds => Int, DisplayName => Str, DomainJoinInfo => L<Paws::AppStream::DomainJoinInfo>, EnableDefaultInternetAccess => Bool, FleetType => Str, MaxUserDurationInSeconds => Int, VpcConfig => L<Paws::AppStream::VpcConfig>])

Each argument is described in detail in: L<Paws::AppStream::CreateFleet>

Returns: a L<Paws::AppStream::CreateFleetResult> instance

  Creates a fleet.


=head2 CreateImageBuilder(ImageName => Str, InstanceType => Str, Name => Str, [Description => Str, DisplayName => Str, DomainJoinInfo => L<Paws::AppStream::DomainJoinInfo>, EnableDefaultInternetAccess => Bool, VpcConfig => L<Paws::AppStream::VpcConfig>])

Each argument is described in detail in: L<Paws::AppStream::CreateImageBuilder>

Returns: a L<Paws::AppStream::CreateImageBuilderResult> instance

  


=head2 CreateImageBuilderStreamingURL(Name => Str, [Validity => Int])

Each argument is described in detail in: L<Paws::AppStream::CreateImageBuilderStreamingURL>

Returns: a L<Paws::AppStream::CreateImageBuilderStreamingURLResult> instance

  


=head2 CreateStack(Name => Str, [Description => Str, DisplayName => Str, StorageConnectors => ArrayRef[L<Paws::AppStream::StorageConnector>]])

Each argument is described in detail in: L<Paws::AppStream::CreateStack>

Returns: a L<Paws::AppStream::CreateStackResult> instance

  Creates a stack.


=head2 CreateStreamingURL(FleetName => Str, StackName => Str, UserId => Str, [ApplicationId => Str, SessionContext => Str, Validity => Int])

Each argument is described in detail in: L<Paws::AppStream::CreateStreamingURL>

Returns: a L<Paws::AppStream::CreateStreamingURLResult> instance

  Creates a URL to start a streaming session for the specified user.

By default, the URL is valid only for one minute from the time that it
is generated.


=head2 DeleteDirectoryConfig(DirectoryName => Str)

Each argument is described in detail in: L<Paws::AppStream::DeleteDirectoryConfig>

Returns: a L<Paws::AppStream::DeleteDirectoryConfigResult> instance

  Deletes the specified directory configuration.


=head2 DeleteFleet(Name => Str)

Each argument is described in detail in: L<Paws::AppStream::DeleteFleet>

Returns: a L<Paws::AppStream::DeleteFleetResult> instance

  Deletes the specified fleet.


=head2 DeleteImage(Name => Str)

Each argument is described in detail in: L<Paws::AppStream::DeleteImage>

Returns: a L<Paws::AppStream::DeleteImageResult> instance

  


=head2 DeleteImageBuilder(Name => Str)

Each argument is described in detail in: L<Paws::AppStream::DeleteImageBuilder>

Returns: a L<Paws::AppStream::DeleteImageBuilderResult> instance

  


=head2 DeleteStack(Name => Str)

Each argument is described in detail in: L<Paws::AppStream::DeleteStack>

Returns: a L<Paws::AppStream::DeleteStackResult> instance

  Deletes the specified stack. After this operation completes, the
environment can no longer be activated and any reservations made for
the stack are released.


=head2 DescribeDirectoryConfigs([DirectoryNames => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::AppStream::DescribeDirectoryConfigs>

Returns: a L<Paws::AppStream::DescribeDirectoryConfigsResult> instance

  Describes the specified directory configurations.


=head2 DescribeFleets([Names => ArrayRef[Str|Undef], NextToken => Str])

Each argument is described in detail in: L<Paws::AppStream::DescribeFleets>

Returns: a L<Paws::AppStream::DescribeFleetsResult> instance

  Describes the specified fleets or all fleets in the account.


=head2 DescribeImageBuilders([MaxResults => Int, Names => ArrayRef[Str|Undef], NextToken => Str])

Each argument is described in detail in: L<Paws::AppStream::DescribeImageBuilders>

Returns: a L<Paws::AppStream::DescribeImageBuildersResult> instance

  


=head2 DescribeImages([Names => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::AppStream::DescribeImages>

Returns: a L<Paws::AppStream::DescribeImagesResult> instance

  Describes the specified images or all images in the account.


=head2 DescribeSessions(FleetName => Str, StackName => Str, [AuthenticationType => Str, Limit => Int, NextToken => Str, UserId => Str])

Each argument is described in detail in: L<Paws::AppStream::DescribeSessions>

Returns: a L<Paws::AppStream::DescribeSessionsResult> instance

  Describes the streaming sessions for the specified stack and fleet. If
a user ID is provided, only the streaming sessions for only that user
are returned. If an authentication type is not provided, the default is
to authenticate users using a streaming URL.


=head2 DescribeStacks([Names => ArrayRef[Str|Undef], NextToken => Str])

Each argument is described in detail in: L<Paws::AppStream::DescribeStacks>

Returns: a L<Paws::AppStream::DescribeStacksResult> instance

  Describes the specified stacks or all stacks in the account.


=head2 DisassociateFleet(FleetName => Str, StackName => Str)

Each argument is described in detail in: L<Paws::AppStream::DisassociateFleet>

Returns: a L<Paws::AppStream::DisassociateFleetResult> instance

  Disassociates the specified fleet from the specified stack.


=head2 ExpireSession(SessionId => Str)

Each argument is described in detail in: L<Paws::AppStream::ExpireSession>

Returns: a L<Paws::AppStream::ExpireSessionResult> instance

  Stops the specified streaming session.


=head2 ListAssociatedFleets(StackName => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::AppStream::ListAssociatedFleets>

Returns: a L<Paws::AppStream::ListAssociatedFleetsResult> instance

  Lists the fleets associated with the specified stack.


=head2 ListAssociatedStacks(FleetName => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::AppStream::ListAssociatedStacks>

Returns: a L<Paws::AppStream::ListAssociatedStacksResult> instance

  Lists the stacks associated with the specified fleet.


=head2 StartFleet(Name => Str)

Each argument is described in detail in: L<Paws::AppStream::StartFleet>

Returns: a L<Paws::AppStream::StartFleetResult> instance

  Starts the specified fleet.


=head2 StartImageBuilder(Name => Str)

Each argument is described in detail in: L<Paws::AppStream::StartImageBuilder>

Returns: a L<Paws::AppStream::StartImageBuilderResult> instance

  


=head2 StopFleet(Name => Str)

Each argument is described in detail in: L<Paws::AppStream::StopFleet>

Returns: a L<Paws::AppStream::StopFleetResult> instance

  Stops the specified fleet.


=head2 StopImageBuilder(Name => Str)

Each argument is described in detail in: L<Paws::AppStream::StopImageBuilder>

Returns: a L<Paws::AppStream::StopImageBuilderResult> instance

  


=head2 UpdateDirectoryConfig(DirectoryName => Str, [OrganizationalUnitDistinguishedNames => ArrayRef[Str|Undef], ServiceAccountCredentials => L<Paws::AppStream::ServiceAccountCredentials>])

Each argument is described in detail in: L<Paws::AppStream::UpdateDirectoryConfig>

Returns: a L<Paws::AppStream::UpdateDirectoryConfigResult> instance

  Updates the specified directory configuration.


=head2 UpdateFleet(Name => Str, [AttributesToDelete => ArrayRef[Str|Undef], ComputeCapacity => L<Paws::AppStream::ComputeCapacity>, DeleteVpcConfig => Bool, Description => Str, DisconnectTimeoutInSeconds => Int, DisplayName => Str, DomainJoinInfo => L<Paws::AppStream::DomainJoinInfo>, EnableDefaultInternetAccess => Bool, ImageName => Str, InstanceType => Str, MaxUserDurationInSeconds => Int, VpcConfig => L<Paws::AppStream::VpcConfig>])

Each argument is described in detail in: L<Paws::AppStream::UpdateFleet>

Returns: a L<Paws::AppStream::UpdateFleetResult> instance

  Updates the specified fleet.

If the fleet is in the C<STOPPED> state, you can update any attribute
except the fleet name. If the fleet is in the C<RUNNING> state, you can
update the C<DisplayName> and C<ComputeCapacity> attributes. If the
fleet is in the C<STARTING> or C<STOPPING> state, you can't update it.


=head2 UpdateStack(Name => Str, [DeleteStorageConnectors => Bool, Description => Str, DisplayName => Str, StorageConnectors => ArrayRef[L<Paws::AppStream::StorageConnector>]])

Each argument is described in detail in: L<Paws::AppStream::UpdateStack>

Returns: a L<Paws::AppStream::UpdateStackResult> instance

  Updates the specified stack.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

