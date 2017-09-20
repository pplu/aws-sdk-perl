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
  sub StopFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::StopFleet', @_);
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
  


  sub operations { qw/AssociateFleet CreateDirectoryConfig CreateFleet CreateStack CreateStreamingURL DeleteDirectoryConfig DeleteFleet DeleteStack DescribeDirectoryConfigs DescribeFleets DescribeImages DescribeSessions DescribeStacks DisassociateFleet ExpireSession ListAssociatedFleets ListAssociatedStacks StartFleet StopFleet UpdateDirectoryConfig UpdateFleet UpdateStack / }

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

API documentation for Amazon AppStream 2.0.

=head1 METHODS

=head2 AssociateFleet(FleetName => Str, StackName => Str)

Each argument is described in detail in: L<Paws::AppStream::AssociateFleet>

Returns: a L<Paws::AppStream::AssociateFleetResult> instance

  Associate a fleet to a stack.


=head2 CreateDirectoryConfig(DirectoryName => Str, OrganizationalUnitDistinguishedNames => ArrayRef[Str|Undef], ServiceAccountCredentials => L<Paws::AppStream::ServiceAccountCredentials>)

Each argument is described in detail in: L<Paws::AppStream::CreateDirectoryConfig>

Returns: a L<Paws::AppStream::CreateDirectoryConfigResult> instance

  Creates a directory configuration with the given parameters.


=head2 CreateFleet(ComputeCapacity => L<Paws::AppStream::ComputeCapacity>, ImageName => Str, InstanceType => Str, Name => Str, [Description => Str, DisconnectTimeoutInSeconds => Int, DisplayName => Str, DomainJoinInfo => L<Paws::AppStream::DomainJoinInfo>, EnableDefaultInternetAccess => Bool, MaxUserDurationInSeconds => Int, VpcConfig => L<Paws::AppStream::VpcConfig>])

Each argument is described in detail in: L<Paws::AppStream::CreateFleet>

Returns: a L<Paws::AppStream::CreateFleetResult> instance

  Creates a new fleet.


=head2 CreateStack(Name => Str, [Description => Str, DisplayName => Str, StorageConnectors => ArrayRef[L<Paws::AppStream::StorageConnector>]])

Each argument is described in detail in: L<Paws::AppStream::CreateStack>

Returns: a L<Paws::AppStream::CreateStackResult> instance

  Create a new stack.


=head2 CreateStreamingURL(FleetName => Str, StackName => Str, UserId => Str, [ApplicationId => Str, SessionContext => Str, Validity => Int])

Each argument is described in detail in: L<Paws::AppStream::CreateStreamingURL>

Returns: a L<Paws::AppStream::CreateStreamingURLResult> instance

  Creates a URL to start an AppStream 2.0 streaming session for a user.
By default, the URL is valid only for 1 minute from the time that it is
generated.


=head2 DeleteDirectoryConfig(DirectoryName => Str)

Each argument is described in detail in: L<Paws::AppStream::DeleteDirectoryConfig>

Returns: a L<Paws::AppStream::DeleteDirectoryConfigResult> instance

  Deletes the directory configuration with the given parameters.


=head2 DeleteFleet(Name => Str)

Each argument is described in detail in: L<Paws::AppStream::DeleteFleet>

Returns: a L<Paws::AppStream::DeleteFleetResult> instance

  Deletes a fleet.


=head2 DeleteStack(Name => Str)

Each argument is described in detail in: L<Paws::AppStream::DeleteStack>

Returns: a L<Paws::AppStream::DeleteStackResult> instance

  Deletes the stack. After this operation completes, the environment can
no longer be activated, and any reservations made for the stack are
released.


=head2 DescribeDirectoryConfigs([DirectoryNames => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::AppStream::DescribeDirectoryConfigs>

Returns: a L<Paws::AppStream::DescribeDirectoryConfigsResult> instance

  Returns a list describing the specified directory configurations.


=head2 DescribeFleets([Names => ArrayRef[Str|Undef], NextToken => Str])

Each argument is described in detail in: L<Paws::AppStream::DescribeFleets>

Returns: a L<Paws::AppStream::DescribeFleetsResult> instance

  If fleet names are provided, this operation describes the specified
fleets; otherwise, all the fleets in the account are described.


=head2 DescribeImages([Names => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::AppStream::DescribeImages>

Returns: a L<Paws::AppStream::DescribeImagesResult> instance

  Describes the images. If a list of names is not provided, all images in
your account are returned. This operation does not return a paginated
result.


=head2 DescribeSessions(FleetName => Str, StackName => Str, [AuthenticationType => Str, Limit => Int, NextToken => Str, UserId => Str])

Each argument is described in detail in: L<Paws::AppStream::DescribeSessions>

Returns: a L<Paws::AppStream::DescribeSessionsResult> instance

  Describes the streaming sessions for a stack and a fleet. If a user ID
is provided, this operation returns streaming sessions for only that
user. To retrieve the next set of items, pass this value for the
C<nextToken> parameter in a subsequent call to this operation. If an
authentication type is not provided, the operation defaults to users
authenticated using a streaming URL.


=head2 DescribeStacks([Names => ArrayRef[Str|Undef], NextToken => Str])

Each argument is described in detail in: L<Paws::AppStream::DescribeStacks>

Returns: a L<Paws::AppStream::DescribeStacksResult> instance

  If stack names are not provided, this operation describes the specified
stacks; otherwise, all stacks in the account are described. To retrieve
the next set of items, pass the C<nextToken> value in a subsequent call
to this operation.


=head2 DisassociateFleet(FleetName => Str, StackName => Str)

Each argument is described in detail in: L<Paws::AppStream::DisassociateFleet>

Returns: a L<Paws::AppStream::DisassociateFleetResult> instance

  Disassociates a fleet from a stack.


=head2 ExpireSession(SessionId => Str)

Each argument is described in detail in: L<Paws::AppStream::ExpireSession>

Returns: a L<Paws::AppStream::ExpireSessionResult> instance

  This operation immediately stops a streaming session.


=head2 ListAssociatedFleets(StackName => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::AppStream::ListAssociatedFleets>

Returns: a L<Paws::AppStream::ListAssociatedFleetsResult> instance

  Lists all fleets associated with the stack.


=head2 ListAssociatedStacks(FleetName => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::AppStream::ListAssociatedStacks>

Returns: a L<Paws::AppStream::ListAssociatedStacksResult> instance

  Lists all stacks to which the specified fleet is associated.


=head2 StartFleet(Name => Str)

Each argument is described in detail in: L<Paws::AppStream::StartFleet>

Returns: a L<Paws::AppStream::StartFleetResult> instance

  Starts a fleet.


=head2 StopFleet(Name => Str)

Each argument is described in detail in: L<Paws::AppStream::StopFleet>

Returns: a L<Paws::AppStream::StopFleetResult> instance

  Stops a fleet.


=head2 UpdateDirectoryConfig(DirectoryName => Str, [OrganizationalUnitDistinguishedNames => ArrayRef[Str|Undef], ServiceAccountCredentials => L<Paws::AppStream::ServiceAccountCredentials>])

Each argument is described in detail in: L<Paws::AppStream::UpdateDirectoryConfig>

Returns: a L<Paws::AppStream::UpdateDirectoryConfigResult> instance

  Updates the directory configuration with the given parameters.


=head2 UpdateFleet(Name => Str, [AttributesToDelete => ArrayRef[Str|Undef], ComputeCapacity => L<Paws::AppStream::ComputeCapacity>, DeleteVpcConfig => Bool, Description => Str, DisconnectTimeoutInSeconds => Int, DisplayName => Str, DomainJoinInfo => L<Paws::AppStream::DomainJoinInfo>, EnableDefaultInternetAccess => Bool, ImageName => Str, InstanceType => Str, MaxUserDurationInSeconds => Int, VpcConfig => L<Paws::AppStream::VpcConfig>])

Each argument is described in detail in: L<Paws::AppStream::UpdateFleet>

Returns: a L<Paws::AppStream::UpdateFleetResult> instance

  Updates an existing fleet. All the attributes except the fleet name can
be updated in the B<STOPPED> state. When a fleet is in the B<RUNNING>
state, only C<DisplayName> and C<ComputeCapacity> can be updated. A
fleet cannot be updated in a status of B<STARTING> or B<STOPPING>.


=head2 UpdateStack(Name => Str, [DeleteStorageConnectors => Bool, Description => Str, DisplayName => Str, StorageConnectors => ArrayRef[L<Paws::AppStream::StorageConnector>]])

Each argument is described in detail in: L<Paws::AppStream::UpdateStack>

Returns: a L<Paws::AppStream::UpdateStackResult> instance

  Updates the specified fields in the stack with the specified name.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

