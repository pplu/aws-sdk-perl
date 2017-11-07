package Paws::CloudHSM;
  use Moose;
  sub service { 'cloudhsm' }
  sub version { '2014-05-30' }
  sub target_prefix { 'CloudHsmFrontendService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddTagsToResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::AddTagsToResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHapg {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::CreateHapg', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHsm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::CreateHsm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLunaClient {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::CreateLunaClient', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHapg {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::DeleteHapg', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHsm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::DeleteHsm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLunaClient {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::DeleteLunaClient', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHapg {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::DescribeHapg', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHsm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::DescribeHsm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLunaClient {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::DescribeLunaClient', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::GetConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAvailableZones {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::ListAvailableZones', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHapgs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::ListHapgs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHsms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::ListHsms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLunaClients {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::ListLunaClients', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyHapg {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::ModifyHapg', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyHsm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::ModifyHsm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyLunaClient {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::ModifyLunaClient', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTagsFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSM::RemoveTagsFromResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AddTagsToResource CreateHapg CreateHsm CreateLunaClient DeleteHapg DeleteHsm DeleteLunaClient DescribeHapg DescribeHsm DescribeLunaClient GetConfig ListAvailableZones ListHapgs ListHsms ListLunaClients ListTagsForResource ModifyHapg ModifyHsm ModifyLunaClient RemoveTagsFromResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM - Perl Interface to AWS Amazon CloudHSM

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudHSM');
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

AWS CloudHSM Service

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

=head1 METHODS

=head2 AddTagsToResource(ResourceArn => Str, TagList => ArrayRef[L<Paws::CloudHSM::Tag>])

Each argument is described in detail in: L<Paws::CloudHSM::AddTagsToResource>

Returns: a L<Paws::CloudHSM::AddTagsToResourceResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Adds or overwrites one or more tags for the specified AWS CloudHSM
resource.

Each tag consists of a key and a value. Tag keys must be unique to each
resource.


=head2 CreateHapg(Label => Str)

Each argument is described in detail in: L<Paws::CloudHSM::CreateHapg>

Returns: a L<Paws::CloudHSM::CreateHapgResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Creates a high-availability partition group. A high-availability
partition group is a group of partitions that spans multiple physical
HSMs.


=head2 CreateHsm(IamRoleArn => Str, SshKey => Str, SubnetId => Str, SubscriptionType => Str, [ClientToken => Str, EniIp => Str, ExternalId => Str, SyslogIp => Str])

Each argument is described in detail in: L<Paws::CloudHSM::CreateHsm>

Returns: a L<Paws::CloudHSM::CreateHsmResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Creates an uninitialized HSM instance.

There is an upfront fee charged for each HSM instance that you create
with the C<CreateHsm> operation. If you accidentally provision an HSM
and want to request a refund, delete the instance using the DeleteHsm
operation, go to the AWS Support Center, create a new case, and select
B<Account and Billing Support>.

It can take up to 20 minutes to create and provision an HSM. You can
monitor the status of the HSM with the DescribeHsm operation. The HSM
is ready to be initialized when the status changes to C<RUNNING>.


=head2 CreateLunaClient(Certificate => Str, [Label => Str])

Each argument is described in detail in: L<Paws::CloudHSM::CreateLunaClient>

Returns: a L<Paws::CloudHSM::CreateLunaClientResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Creates an HSM client.


=head2 DeleteHapg(HapgArn => Str)

Each argument is described in detail in: L<Paws::CloudHSM::DeleteHapg>

Returns: a L<Paws::CloudHSM::DeleteHapgResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Deletes a high-availability partition group.


=head2 DeleteHsm(HsmArn => Str)

Each argument is described in detail in: L<Paws::CloudHSM::DeleteHsm>

Returns: a L<Paws::CloudHSM::DeleteHsmResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Deletes an HSM. After completion, this operation cannot be undone and
your key material cannot be recovered.


=head2 DeleteLunaClient(ClientArn => Str)

Each argument is described in detail in: L<Paws::CloudHSM::DeleteLunaClient>

Returns: a L<Paws::CloudHSM::DeleteLunaClientResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Deletes a client.


=head2 DescribeHapg(HapgArn => Str)

Each argument is described in detail in: L<Paws::CloudHSM::DescribeHapg>

Returns: a L<Paws::CloudHSM::DescribeHapgResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Retrieves information about a high-availability partition group.


=head2 DescribeHsm([HsmArn => Str, HsmSerialNumber => Str])

Each argument is described in detail in: L<Paws::CloudHSM::DescribeHsm>

Returns: a L<Paws::CloudHSM::DescribeHsmResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Retrieves information about an HSM. You can identify the HSM by its ARN
or its serial number.


=head2 DescribeLunaClient([CertificateFingerprint => Str, ClientArn => Str])

Each argument is described in detail in: L<Paws::CloudHSM::DescribeLunaClient>

Returns: a L<Paws::CloudHSM::DescribeLunaClientResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Retrieves information about an HSM client.


=head2 GetConfig(ClientArn => Str, ClientVersion => Str, HapgList => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::CloudHSM::GetConfig>

Returns: a L<Paws::CloudHSM::GetConfigResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Gets the configuration files necessary to connect to all high
availability partition groups the client is associated with.


=head2 ListAvailableZones()

Each argument is described in detail in: L<Paws::CloudHSM::ListAvailableZones>

Returns: a L<Paws::CloudHSM::ListAvailableZonesResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Lists the Availability Zones that have available AWS CloudHSM capacity.


=head2 ListHapgs([NextToken => Str])

Each argument is described in detail in: L<Paws::CloudHSM::ListHapgs>

Returns: a L<Paws::CloudHSM::ListHapgsResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Lists the high-availability partition groups for the account.

This operation supports pagination with the use of the C<NextToken>
member. If more results are available, the C<NextToken> member of the
response contains a token that you pass in the next call to
C<ListHapgs> to retrieve the next set of items.


=head2 ListHsms([NextToken => Str])

Each argument is described in detail in: L<Paws::CloudHSM::ListHsms>

Returns: a L<Paws::CloudHSM::ListHsmsResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Retrieves the identifiers of all of the HSMs provisioned for the
current customer.

This operation supports pagination with the use of the C<NextToken>
member. If more results are available, the C<NextToken> member of the
response contains a token that you pass in the next call to C<ListHsms>
to retrieve the next set of items.


=head2 ListLunaClients([NextToken => Str])

Each argument is described in detail in: L<Paws::CloudHSM::ListLunaClients>

Returns: a L<Paws::CloudHSM::ListLunaClientsResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Lists all of the clients.

This operation supports pagination with the use of the C<NextToken>
member. If more results are available, the C<NextToken> member of the
response contains a token that you pass in the next call to
C<ListLunaClients> to retrieve the next set of items.


=head2 ListTagsForResource(ResourceArn => Str)

Each argument is described in detail in: L<Paws::CloudHSM::ListTagsForResource>

Returns: a L<Paws::CloudHSM::ListTagsForResourceResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Returns a list of all tags for the specified AWS CloudHSM resource.


=head2 ModifyHapg(HapgArn => Str, [Label => Str, PartitionSerialList => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::CloudHSM::ModifyHapg>

Returns: a L<Paws::CloudHSM::ModifyHapgResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Modifies an existing high-availability partition group.


=head2 ModifyHsm(HsmArn => Str, [EniIp => Str, ExternalId => Str, IamRoleArn => Str, SubnetId => Str, SyslogIp => Str])

Each argument is described in detail in: L<Paws::CloudHSM::ModifyHsm>

Returns: a L<Paws::CloudHSM::ModifyHsmResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Modifies an HSM.

This operation can result in the HSM being offline for up to 15 minutes
while the AWS CloudHSM service is reconfigured. If you are modifying a
production HSM, you should ensure that your AWS CloudHSM service is
configured for high availability, and consider executing this operation
during a maintenance window.


=head2 ModifyLunaClient(Certificate => Str, ClientArn => Str)

Each argument is described in detail in: L<Paws::CloudHSM::ModifyLunaClient>

Returns: a L<Paws::CloudHSM::ModifyLunaClientResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Modifies the certificate used by the client.

This action can potentially start a workflow to install the new
certificate on the client's HSMs.


=head2 RemoveTagsFromResource(ResourceArn => Str, TagKeyList => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::CloudHSM::RemoveTagsFromResource>

Returns: a L<Paws::CloudHSM::RemoveTagsFromResourceResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic
User Guide, and the AWS CloudHSM Classic API Reference.

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API
Reference.

Removes one or more tags from the specified AWS CloudHSM resource.

To remove a tag, specify only the tag key to remove (not the value). To
overwrite the value for an existing tag, use AddTagsToResource.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

