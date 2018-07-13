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
  sub UpdateStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppStream::UpdateStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateFleet CopyImage CreateDirectoryConfig CreateFleet CreateImageBuilder CreateImageBuilderStreamingURL CreateStack CreateStreamingURL DeleteDirectoryConfig DeleteFleet DeleteImage DeleteImageBuilder DeleteStack DescribeDirectoryConfigs DescribeFleets DescribeImageBuilders DescribeImages DescribeSessions DescribeStacks DisassociateFleet ExpireSession ListAssociatedFleets ListAssociatedStacks ListTagsForResource StartFleet StartImageBuilder StopFleet StopImageBuilder TagResource UntagResource UpdateDirectoryConfig UpdateFleet UpdateStack / }

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

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateFleet

=over

=item FleetName => Str

=item StackName => Str


=back

Each argument is described in detail in: L<Paws::AppStream::AssociateFleet>

Returns: a L<Paws::AppStream::AssociateFleetResult> instance

Associates the specified fleet with the specified stack.


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

=item ImageName => Str

=item InstanceType => Str

=item Name => Str

=item [Description => Str]

=item [DisconnectTimeoutInSeconds => Int]

=item [DisplayName => Str]

=item [DomainJoinInfo => L<Paws::AppStream::DomainJoinInfo>]

=item [EnableDefaultInternetAccess => Bool]

=item [FleetType => Str]

=item [MaxUserDurationInSeconds => Int]

=item [VpcConfig => L<Paws::AppStream::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::AppStream::CreateFleet>

Returns: a L<Paws::AppStream::CreateFleetResult> instance

Creates a fleet. A fleet consists of streaming instances that run a
specified image.


=head2 CreateImageBuilder

=over

=item ImageName => Str

=item InstanceType => Str

=item Name => Str

=item [AppstreamAgentVersion => Str]

=item [Description => Str]

=item [DisplayName => Str]

=item [DomainJoinInfo => L<Paws::AppStream::DomainJoinInfo>]

=item [EnableDefaultInternetAccess => Bool]

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

=item [Description => Str]

=item [DisplayName => Str]

=item [FeedbackURL => Str]

=item [RedirectURL => Str]

=item [StorageConnectors => ArrayRef[L<Paws::AppStream::StorageConnector>]]

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


=head2 DescribeImages

=over

=item [MaxResults => Int]

=item [Names => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppStream::DescribeImages>

Returns: a L<Paws::AppStream::DescribeImagesResult> instance

Retrieves a list that describes one or more specified images, if the
image names are provided. Otherwise, all images in the account are
described.


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
stack and fleet. If a user ID is provided for the stack and fleet, only
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


=head2 DisassociateFleet

=over

=item FleetName => Str

=item StackName => Str


=back

Each argument is described in detail in: L<Paws::AppStream::DisassociateFleet>

Returns: a L<Paws::AppStream::DisassociateFleetResult> instance

Disassociates the specified fleet from the specified stack.


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

=item Name => Str

=item [AttributesToDelete => ArrayRef[Str|Undef]]

=item [ComputeCapacity => L<Paws::AppStream::ComputeCapacity>]

=item [DeleteVpcConfig => Bool]

=item [Description => Str]

=item [DisconnectTimeoutInSeconds => Int]

=item [DisplayName => Str]

=item [DomainJoinInfo => L<Paws::AppStream::DomainJoinInfo>]

=item [EnableDefaultInternetAccess => Bool]

=item [ImageName => Str]

=item [InstanceType => Str]

=item [MaxUserDurationInSeconds => Int]

=item [VpcConfig => L<Paws::AppStream::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::AppStream::UpdateFleet>

Returns: a L<Paws::AppStream::UpdateFleetResult> instance

Updates the specified fleet.

If the fleet is in the C<STOPPED> state, you can update any attribute
except the fleet name. If the fleet is in the C<RUNNING> state, you can
update the C<DisplayName> and C<ComputeCapacity> attributes. If the
fleet is in the C<STARTING> or C<STOPPING> state, you can't update it.


=head2 UpdateStack

=over

=item Name => Str

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




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

