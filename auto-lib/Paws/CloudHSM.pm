package Paws::CloudHSM;
  use Moose;
  sub service { 'cloudhsm' }
  sub signing_name { 'cloudhsm' }
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
  
  sub ListAllHapgs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHapgs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListHapgs(@_, NextToken => $next_result->NextToken);
        push @{ $result->HapgList }, @{ $next_result->HapgList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'HapgList') foreach (@{ $result->HapgList });
        $result = $self->ListHapgs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'HapgList') foreach (@{ $result->HapgList });
    }

    return undef
  }
  sub ListAllHsms {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHsms(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListHsms(@_, NextToken => $next_result->NextToken);
        push @{ $result->HsmList }, @{ $next_result->HsmList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'HsmList') foreach (@{ $result->HsmList });
        $result = $self->ListHsms(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'HsmList') foreach (@{ $result->HsmList });
    }

    return undef
  }
  sub ListAllLunaClients {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLunaClients(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLunaClients(@_, NextToken => $next_result->NextToken);
        push @{ $result->ClientList }, @{ $next_result->ClientList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ClientList') foreach (@{ $result->ClientList });
        $result = $self->ListLunaClients(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ClientList') foreach (@{ $result->ClientList });
    }

    return undef
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
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30>


=head1 METHODS

=head2 AddTagsToResource

=over

=item ResourceArn => Str

=item TagList => ArrayRef[L<Paws::CloudHSM::Tag>]


=back

Each argument is described in detail in: L<Paws::CloudHSM::AddTagsToResource>

Returns: a L<Paws::CloudHSM::AddTagsToResourceResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Adds or overwrites one or more tags for the specified AWS CloudHSM
resource.

Each tag consists of a key and a value. Tag keys must be unique to each
resource.


=head2 CreateHapg

=over

=item Label => Str


=back

Each argument is described in detail in: L<Paws::CloudHSM::CreateHapg>

Returns: a L<Paws::CloudHSM::CreateHapgResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Creates a high-availability partition group. A high-availability
partition group is a group of partitions that spans multiple physical
HSMs.


=head2 CreateHsm

=over

=item IamRoleArn => Str

=item SshKey => Str

=item SubnetId => Str

=item SubscriptionType => Str

=item [ClientToken => Str]

=item [EniIp => Str]

=item [ExternalId => Str]

=item [SyslogIp => Str]


=back

Each argument is described in detail in: L<Paws::CloudHSM::CreateHsm>

Returns: a L<Paws::CloudHSM::CreateHsmResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Creates an uninitialized HSM instance.

There is an upfront fee charged for each HSM instance that you create
with the C<CreateHsm> operation. If you accidentally provision an HSM
and want to request a refund, delete the instance using the DeleteHsm
operation, go to the AWS Support Center
(https://console.aws.amazon.com/support/home), create a new case, and
select B<Account and Billing Support>.

It can take up to 20 minutes to create and provision an HSM. You can
monitor the status of the HSM with the DescribeHsm operation. The HSM
is ready to be initialized when the status changes to C<RUNNING>.


=head2 CreateLunaClient

=over

=item Certificate => Str

=item [Label => Str]


=back

Each argument is described in detail in: L<Paws::CloudHSM::CreateLunaClient>

Returns: a L<Paws::CloudHSM::CreateLunaClientResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Creates an HSM client.


=head2 DeleteHapg

=over

=item HapgArn => Str


=back

Each argument is described in detail in: L<Paws::CloudHSM::DeleteHapg>

Returns: a L<Paws::CloudHSM::DeleteHapgResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Deletes a high-availability partition group.


=head2 DeleteHsm

=over

=item HsmArn => Str


=back

Each argument is described in detail in: L<Paws::CloudHSM::DeleteHsm>

Returns: a L<Paws::CloudHSM::DeleteHsmResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Deletes an HSM. After completion, this operation cannot be undone and
your key material cannot be recovered.


=head2 DeleteLunaClient

=over

=item ClientArn => Str


=back

Each argument is described in detail in: L<Paws::CloudHSM::DeleteLunaClient>

Returns: a L<Paws::CloudHSM::DeleteLunaClientResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Deletes a client.


=head2 DescribeHapg

=over

=item HapgArn => Str


=back

Each argument is described in detail in: L<Paws::CloudHSM::DescribeHapg>

Returns: a L<Paws::CloudHSM::DescribeHapgResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Retrieves information about a high-availability partition group.


=head2 DescribeHsm

=over

=item [HsmArn => Str]

=item [HsmSerialNumber => Str]


=back

Each argument is described in detail in: L<Paws::CloudHSM::DescribeHsm>

Returns: a L<Paws::CloudHSM::DescribeHsmResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Retrieves information about an HSM. You can identify the HSM by its ARN
or its serial number.


=head2 DescribeLunaClient

=over

=item [CertificateFingerprint => Str]

=item [ClientArn => Str]


=back

Each argument is described in detail in: L<Paws::CloudHSM::DescribeLunaClient>

Returns: a L<Paws::CloudHSM::DescribeLunaClientResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Retrieves information about an HSM client.


=head2 GetConfig

=over

=item ClientArn => Str

=item ClientVersion => Str

=item HapgList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CloudHSM::GetConfig>

Returns: a L<Paws::CloudHSM::GetConfigResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Gets the configuration files necessary to connect to all high
availability partition groups the client is associated with.


=head2 ListAvailableZones






Each argument is described in detail in: L<Paws::CloudHSM::ListAvailableZones>

Returns: a L<Paws::CloudHSM::ListAvailableZonesResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Lists the Availability Zones that have available AWS CloudHSM capacity.


=head2 ListHapgs

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudHSM::ListHapgs>

Returns: a L<Paws::CloudHSM::ListHapgsResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Lists the high-availability partition groups for the account.

This operation supports pagination with the use of the C<NextToken>
member. If more results are available, the C<NextToken> member of the
response contains a token that you pass in the next call to
C<ListHapgs> to retrieve the next set of items.


=head2 ListHsms

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudHSM::ListHsms>

Returns: a L<Paws::CloudHSM::ListHsmsResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Retrieves the identifiers of all of the HSMs provisioned for the
current customer.

This operation supports pagination with the use of the C<NextToken>
member. If more results are available, the C<NextToken> member of the
response contains a token that you pass in the next call to C<ListHsms>
to retrieve the next set of items.


=head2 ListLunaClients

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudHSM::ListLunaClients>

Returns: a L<Paws::CloudHSM::ListLunaClientsResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Lists all of the clients.

This operation supports pagination with the use of the C<NextToken>
member. If more results are available, the C<NextToken> member of the
response contains a token that you pass in the next call to
C<ListLunaClients> to retrieve the next set of items.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CloudHSM::ListTagsForResource>

Returns: a L<Paws::CloudHSM::ListTagsForResourceResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Returns a list of all tags for the specified AWS CloudHSM resource.


=head2 ModifyHapg

=over

=item HapgArn => Str

=item [Label => Str]

=item [PartitionSerialList => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CloudHSM::ModifyHapg>

Returns: a L<Paws::CloudHSM::ModifyHapgResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Modifies an existing high-availability partition group.


=head2 ModifyHsm

=over

=item HsmArn => Str

=item [EniIp => Str]

=item [ExternalId => Str]

=item [IamRoleArn => Str]

=item [SubnetId => Str]

=item [SyslogIp => Str]


=back

Each argument is described in detail in: L<Paws::CloudHSM::ModifyHsm>

Returns: a L<Paws::CloudHSM::ModifyHsmResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Modifies an HSM.

This operation can result in the HSM being offline for up to 15 minutes
while the AWS CloudHSM service is reconfigured. If you are modifying a
production HSM, you should ensure that your AWS CloudHSM service is
configured for high availability, and consider executing this operation
during a maintenance window.


=head2 ModifyLunaClient

=over

=item Certificate => Str

=item ClientArn => Str


=back

Each argument is described in detail in: L<Paws::CloudHSM::ModifyLunaClient>

Returns: a L<Paws::CloudHSM::ModifyLunaClientResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Modifies the certificate used by the client.

This action can potentially start a workflow to install the new
certificate on the client's HSMs.


=head2 RemoveTagsFromResource

=over

=item ResourceArn => Str

=item TagKeyList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CloudHSM::RemoveTagsFromResource>

Returns: a L<Paws::CloudHSM::RemoveTagsFromResourceResponse> instance

This is documentation for B<AWS CloudHSM Classic>. For more
information, see AWS CloudHSM Classic FAQs
(http://aws.amazon.com/cloudhsm/faqs-classic/), the AWS CloudHSM
Classic User Guide
(http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the AWS
CloudHSM Classic API Reference
(http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

B<For information about the current version of AWS CloudHSM>, see AWS
CloudHSM (http://aws.amazon.com/cloudhsm/), the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the AWS
CloudHSM API Reference
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Removes one or more tags from the specified AWS CloudHSM resource.

To remove a tag, specify only the tag key to remove (not the value). To
overwrite the value for an existing tag, use AddTagsToResource.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllHapgs(sub { },[NextToken => Str])

=head2 ListAllHapgs([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HapgList, passing the object as the first parameter, and the string 'HapgList' as the second parameter 

If not, it will return a a L<Paws::CloudHSM::ListHapgsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllHsms(sub { },[NextToken => Str])

=head2 ListAllHsms([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HsmList, passing the object as the first parameter, and the string 'HsmList' as the second parameter 

If not, it will return a a L<Paws::CloudHSM::ListHsmsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLunaClients(sub { },[NextToken => Str])

=head2 ListAllLunaClients([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClientList, passing the object as the first parameter, and the string 'ClientList' as the second parameter 

If not, it will return a a L<Paws::CloudHSM::ListLunaClientsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

