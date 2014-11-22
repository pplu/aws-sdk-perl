
use Paws::API;


package Paws::DynamoDB {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'dynamodb');
  has version => (is => 'ro', isa => 'Str', default => '2012-08-10');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'DynamoDB_20120810');
  has json_version => (is => 'ro', isa => 'Str', default => "1.0");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub BatchGetItem {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::BatchGetItem', @_);
  }
  sub BatchWriteItem {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::BatchWriteItem', @_);
  }
  sub CreateTable {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::CreateTable', @_);
  }
  sub DeleteItem {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::DeleteItem', @_);
  }
  sub DeleteTable {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::DeleteTable', @_);
  }
  sub DescribeTable {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::DescribeTable', @_);
  }
  sub GetItem {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::GetItem', @_);
  }
  sub ListTables {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::ListTables', @_);
  }
  sub PutItem {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::PutItem', @_);
  }
  sub Query {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::Query', @_);
  }
  sub Scan {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::Scan', @_);
  }
  sub UpdateItem {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::UpdateItem', @_);
  }
  sub UpdateTable {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::UpdateTable', @_);
  }
}
1;
