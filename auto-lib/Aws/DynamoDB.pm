
use AWS::API;


package Aws::DynamoDB {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'dynamodb');
  has version => (is => 'ro', isa => 'Str', default => '2012-08-10');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'DynamoDB_20120810');
  has json_version => (is => 'ro', isa => 'Str', default => "1.0");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub BatchGetItem {
    my $self = shift;
    return $self->do_call('Aws::DynamoDB::BatchGetItem', @_);
  }
  sub BatchWriteItem {
    my $self = shift;
    return $self->do_call('Aws::DynamoDB::BatchWriteItem', @_);
  }
  sub CreateTable {
    my $self = shift;
    return $self->do_call('Aws::DynamoDB::CreateTable', @_);
  }
  sub DeleteItem {
    my $self = shift;
    return $self->do_call('Aws::DynamoDB::DeleteItem', @_);
  }
  sub DeleteTable {
    my $self = shift;
    return $self->do_call('Aws::DynamoDB::DeleteTable', @_);
  }
  sub DescribeTable {
    my $self = shift;
    return $self->do_call('Aws::DynamoDB::DescribeTable', @_);
  }
  sub GetItem {
    my $self = shift;
    return $self->do_call('Aws::DynamoDB::GetItem', @_);
  }
  sub ListTables {
    my $self = shift;
    return $self->do_call('Aws::DynamoDB::ListTables', @_);
  }
  sub PutItem {
    my $self = shift;
    return $self->do_call('Aws::DynamoDB::PutItem', @_);
  }
  sub Query {
    my $self = shift;
    return $self->do_call('Aws::DynamoDB::Query', @_);
  }
  sub Scan {
    my $self = shift;
    return $self->do_call('Aws::DynamoDB::Scan', @_);
  }
  sub UpdateItem {
    my $self = shift;
    return $self->do_call('Aws::DynamoDB::UpdateItem', @_);
  }
  sub UpdateTable {
    my $self = shift;
    return $self->do_call('Aws::DynamoDB::UpdateTable', @_);
  }
}
1;
