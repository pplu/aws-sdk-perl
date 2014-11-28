
use Paws::API;


package Paws::CognitoSync {
  warn "Paws::CognitoSync is not stable / supported / entirely developed";
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'cognito-sync');
  has version => (is => 'ro', isa => 'Str', default => '2014-06-30');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::RestJsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::RestJsonResponse');

  
  sub DeleteDataset {
    my $self = shift;
    return $self->do_call('Paws::CognitoSync::DeleteDataset', @_);
  }
  sub DescribeDataset {
    my $self = shift;
    return $self->do_call('Paws::CognitoSync::DescribeDataset', @_);
  }
  sub DescribeIdentityPoolUsage {
    my $self = shift;
    return $self->do_call('Paws::CognitoSync::DescribeIdentityPoolUsage', @_);
  }
  sub DescribeIdentityUsage {
    my $self = shift;
    return $self->do_call('Paws::CognitoSync::DescribeIdentityUsage', @_);
  }
  sub GetIdentityPoolConfiguration {
    my $self = shift;
    return $self->do_call('Paws::CognitoSync::GetIdentityPoolConfiguration', @_);
  }
  sub ListDatasets {
    my $self = shift;
    return $self->do_call('Paws::CognitoSync::ListDatasets', @_);
  }
  sub ListIdentityPoolUsage {
    my $self = shift;
    return $self->do_call('Paws::CognitoSync::ListIdentityPoolUsage', @_);
  }
  sub ListRecords {
    my $self = shift;
    return $self->do_call('Paws::CognitoSync::ListRecords', @_);
  }
  sub RegisterDevice {
    my $self = shift;
    return $self->do_call('Paws::CognitoSync::RegisterDevice', @_);
  }
  sub SetIdentityPoolConfiguration {
    my $self = shift;
    return $self->do_call('Paws::CognitoSync::SetIdentityPoolConfiguration', @_);
  }
  sub SubscribeToDataset {
    my $self = shift;
    return $self->do_call('Paws::CognitoSync::SubscribeToDataset', @_);
  }
  sub UnsubscribeFromDataset {
    my $self = shift;
    return $self->do_call('Paws::CognitoSync::UnsubscribeFromDataset', @_);
  }
  sub UpdateRecords {
    my $self = shift;
    return $self->do_call('Paws::CognitoSync::UpdateRecords', @_);
  }
}
1;