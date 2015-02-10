
use Paws::API;


package Paws::CognitoSync {
  warn "Paws::CognitoSync is not stable / supported / entirely developed";
  use Moose;
  sub service { 'cognito-sync' }
  sub version { '2014-06-30' }
  sub flattened_arrays { 0 }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';

  
  sub DeleteDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::DeleteDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::DescribeDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIdentityPoolUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::DescribeIdentityPoolUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIdentityUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::DescribeIdentityUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdentityPoolConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::GetIdentityPoolConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::ListDatasets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIdentityPoolUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::ListIdentityPoolUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::ListRecords', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::RegisterDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetIdentityPoolConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::SetIdentityPoolConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SubscribeToDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::SubscribeToDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnsubscribeFromDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::UnsubscribeFromDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRecords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::UpdateRecords', @_);
    return $self->caller->do_call($self, $call_object);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync - Perl Interface to AWS Amazon Cognito Sync

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



Amazon Cognito Sync

Amazon Cognito Sync provides an AWS service and client library that
enable cross-device syncing of application-related user data.
High-level client libraries are available for both iOS and Android. You
can use these libraries to persist data locally so that it's available
even if the device is offline. Developer credentials don't need to be
stored on the mobile device to access the service. You can use Amazon
Cognito to obtain a normalized user ID and credentials. User data is
persisted in a dataset that can store up to 1 MB of key-value pairs,
and you can have up to 20 datasets per user identity.

With Amazon Cognito Sync, the data stored for each identity is
accessible only to credentials assigned to that identity. In order to
use the Cognito Sync service, you need to make API calls using
credentials retrieved with Amazon Cognito Identity service.










=head1 METHODS

=head2 DeleteDataset()

  Arguments described in: L<Paws::CognitoSync::DeleteDataset>

  Returns: L<Paws::CognitoSync::DeleteDatasetResponse>

  

Deletes the specific dataset. The dataset will be deleted permanently,
and the action can't be undone. Datasets that this dataset was merged
with will no longer report the merge. Any consequent operation on this
dataset will result in a ResourceNotFoundException.











=head2 DescribeDataset()

  Arguments described in: L<Paws::CognitoSync::DescribeDataset>

  Returns: L<Paws::CognitoSync::DescribeDatasetResponse>

  

Gets metadata about a dataset by identity and dataset name. The
credentials used to make this API call need to have access to the
identity data. With Amazon Cognito Sync, each identity has access only
to its own data. You should use Amazon Cognito Identity service to
retrieve the credentials necessary to make this API call.











=head2 DescribeIdentityPoolUsage()

  Arguments described in: L<Paws::CognitoSync::DescribeIdentityPoolUsage>

  Returns: L<Paws::CognitoSync::DescribeIdentityPoolUsageResponse>

  

Gets usage details (for example, data storage) about a particular
identity pool.











=head2 DescribeIdentityUsage()

  Arguments described in: L<Paws::CognitoSync::DescribeIdentityUsage>

  Returns: L<Paws::CognitoSync::DescribeIdentityUsageResponse>

  

Gets usage information for an identity, including number of datasets
and data usage.











=head2 GetIdentityPoolConfiguration()

  Arguments described in: L<Paws::CognitoSync::GetIdentityPoolConfiguration>

  Returns: L<Paws::CognitoSync::GetIdentityPoolConfigurationResponse>

  

Gets the configuration settings of an identity pool.











=head2 ListDatasets()

  Arguments described in: L<Paws::CognitoSync::ListDatasets>

  Returns: L<Paws::CognitoSync::ListDatasetsResponse>

  

Lists datasets for an identity. The credentials used to make this API
call need to have access to the identity data. With Amazon Cognito
Sync, each identity has access only to its own data. You should use
Amazon Cognito Identity service to retrieve the credentials necessary
to make this API call.











=head2 ListIdentityPoolUsage()

  Arguments described in: L<Paws::CognitoSync::ListIdentityPoolUsage>

  Returns: L<Paws::CognitoSync::ListIdentityPoolUsageResponse>

  

Gets a list of identity pools registered with Cognito.











=head2 ListRecords()

  Arguments described in: L<Paws::CognitoSync::ListRecords>

  Returns: L<Paws::CognitoSync::ListRecordsResponse>

  

Gets paginated records, optionally changed after a particular sync
count for a dataset and identity. The credentials used to make this API
call need to have access to the identity data. With Amazon Cognito
Sync, each identity has access only to its own data. You should use
Amazon Cognito Identity service to retrieve the credentials necessary
to make this API call.











=head2 RegisterDevice()

  Arguments described in: L<Paws::CognitoSync::RegisterDevice>

  Returns: L<Paws::CognitoSync::RegisterDeviceResponse>

  

Registers a device to receive push sync notifications.











=head2 SetIdentityPoolConfiguration()

  Arguments described in: L<Paws::CognitoSync::SetIdentityPoolConfiguration>

  Returns: L<Paws::CognitoSync::SetIdentityPoolConfigurationResponse>

  

Sets the necessary configuration for push sync.











=head2 SubscribeToDataset()

  Arguments described in: L<Paws::CognitoSync::SubscribeToDataset>

  Returns: L<Paws::CognitoSync::SubscribeToDatasetResponse>

  

Subscribes to receive notifications when a dataset is modified by
another device.











=head2 UnsubscribeFromDataset()

  Arguments described in: L<Paws::CognitoSync::UnsubscribeFromDataset>

  Returns: L<Paws::CognitoSync::UnsubscribeFromDatasetResponse>

  

Unsubscribe from receiving notifications when a dataset is modified by
another device.











=head2 UpdateRecords()

  Arguments described in: L<Paws::CognitoSync::UpdateRecords>

  Returns: L<Paws::CognitoSync::UpdateRecordsResponse>

  

Posts updates to records and add and delete records for a dataset and
user. The credentials used to make this API call need to have access to
the identity data. With Amazon Cognito Sync, each identity has access
only to its own data. You should use Amazon Cognito Identity service to
retrieve the credentials necessary to make this API call.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

