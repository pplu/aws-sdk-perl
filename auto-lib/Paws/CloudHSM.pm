
use Paws::API;


package Paws::CloudHSM {
  use Moose;
  sub service { 'cloudhsm' }
  sub version { '2014-05-30' }
  sub target_prefix { 'CloudHsmFrontendService' }
  sub json_version { "1.1" }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
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
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM - Perl Interface to AWS Amazon CloudHSM

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



AWS CloudHSM Service










=head1 METHODS

=head2 CreateHapg()

  Arguments described in: L<Paws::CloudHSM::CreateHapg>

  Returns: L<Paws::CloudHSM::CreateHapgResponse>

  

Creates a high-availability partition group. A high-availability
partition group is a group of partitions that spans multiple physical
HSMs.











=head2 CreateHsm()

  Arguments described in: L<Paws::CloudHSM::CreateHsm>

  Returns: L<Paws::CloudHSM::CreateHsmResponse>

  

Creates an uninitialized HSM instance. Running this command provisions
an HSM appliance and will result in charges to your AWS account for the
HSM.











=head2 CreateLunaClient()

  Arguments described in: L<Paws::CloudHSM::CreateLunaClient>

  Returns: L<Paws::CloudHSM::CreateLunaClientResponse>

  

Creates an HSM client.











=head2 DeleteHapg()

  Arguments described in: L<Paws::CloudHSM::DeleteHapg>

  Returns: L<Paws::CloudHSM::DeleteHapgResponse>

  

Deletes a high-availability partition group.











=head2 DeleteHsm()

  Arguments described in: L<Paws::CloudHSM::DeleteHsm>

  Returns: L<Paws::CloudHSM::DeleteHsmResponse>

  

Deletes an HSM. Once complete, this operation cannot be undone and your
key material cannot be recovered.











=head2 DeleteLunaClient()

  Arguments described in: L<Paws::CloudHSM::DeleteLunaClient>

  Returns: L<Paws::CloudHSM::DeleteLunaClientResponse>

  

Deletes a client.











=head2 DescribeHapg()

  Arguments described in: L<Paws::CloudHSM::DescribeHapg>

  Returns: L<Paws::CloudHSM::DescribeHapgResponse>

  

Retrieves information about a high-availability partition group.











=head2 DescribeHsm()

  Arguments described in: L<Paws::CloudHSM::DescribeHsm>

  Returns: L<Paws::CloudHSM::DescribeHsmResponse>

  

Retrieves information about an HSM. You can identify the HSM by its ARN
or its serial number.











=head2 DescribeLunaClient()

  Arguments described in: L<Paws::CloudHSM::DescribeLunaClient>

  Returns: L<Paws::CloudHSM::DescribeLunaClientResponse>

  

Retrieves information about an HSM client.











=head2 GetConfig()

  Arguments described in: L<Paws::CloudHSM::GetConfig>

  Returns: L<Paws::CloudHSM::GetConfigResponse>

  

Gets the configuration files necessary to connect to all high
availability partition groups the client is associated with.











=head2 ListAvailableZones()

  Arguments described in: L<Paws::CloudHSM::ListAvailableZones>

  Returns: L<Paws::CloudHSM::ListAvailableZonesResponse>

  

Lists the Availability Zones that have available AWS CloudHSM capacity.











=head2 ListHapgs()

  Arguments described in: L<Paws::CloudHSM::ListHapgs>

  Returns: L<Paws::CloudHSM::ListHapgsResponse>

  

Lists the high-availability partition groups for the account.

This operation supports pagination with the use of the I<NextToken>
member. If more results are available, the I<NextToken> member of the
response contains a token that you pass in the next call to ListHapgs
to retrieve the next set of items.











=head2 ListHsms()

  Arguments described in: L<Paws::CloudHSM::ListHsms>

  Returns: L<Paws::CloudHSM::ListHsmsResponse>

  

Retrieves the identifiers of all of the HSMs provisioned for the
current customer.

This operation supports pagination with the use of the I<NextToken>
member. If more results are available, the I<NextToken> member of the
response contains a token that you pass in the next call to ListHsms to
retrieve the next set of items.











=head2 ListLunaClients()

  Arguments described in: L<Paws::CloudHSM::ListLunaClients>

  Returns: L<Paws::CloudHSM::ListLunaClientsResponse>

  

Lists all of the clients.

This operation supports pagination with the use of the I<NextToken>
member. If more results are available, the I<NextToken> member of the
response contains a token that you pass in the next call to
ListLunaClients to retrieve the next set of items.











=head2 ModifyHapg()

  Arguments described in: L<Paws::CloudHSM::ModifyHapg>

  Returns: L<Paws::CloudHSM::ModifyHapgResponse>

  

Modifies an existing high-availability partition group.











=head2 ModifyHsm()

  Arguments described in: L<Paws::CloudHSM::ModifyHsm>

  Returns: L<Paws::CloudHSM::ModifyHsmResponse>

  

Modifies an HSM.











=head2 ModifyLunaClient()

  Arguments described in: L<Paws::CloudHSM::ModifyLunaClient>

  Returns: L<Paws::CloudHSM::ModifyLunaClientResponse>

  

Modifies the certificate used by the client.

This action can potentially start a workflow to install the new
certificate on the client's HSMs.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

