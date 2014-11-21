
use AWS::API;


package Aws::Kinesis {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'kinesis');
  has version => (is => 'ro', isa => 'Str', default => '2013-12-02');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'Kinesis_20131202');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub CreateStream {
    my $self = shift;
    return $self->do_call('Aws::Kinesis::CreateStream', @_);
  }
  sub DeleteStream {
    my $self = shift;
    return $self->do_call('Aws::Kinesis::DeleteStream', @_);
  }
  sub DescribeStream {
    my $self = shift;
    return $self->do_call('Aws::Kinesis::DescribeStream', @_);
  }
  sub GetRecords {
    my $self = shift;
    return $self->do_call('Aws::Kinesis::GetRecords', @_);
  }
  sub GetShardIterator {
    my $self = shift;
    return $self->do_call('Aws::Kinesis::GetShardIterator', @_);
  }
  sub ListStreams {
    my $self = shift;
    return $self->do_call('Aws::Kinesis::ListStreams', @_);
  }
  sub MergeShards {
    my $self = shift;
    return $self->do_call('Aws::Kinesis::MergeShards', @_);
  }
  sub PutRecord {
    my $self = shift;
    return $self->do_call('Aws::Kinesis::PutRecord', @_);
  }
  sub SplitShard {
    my $self = shift;
    return $self->do_call('Aws::Kinesis::SplitShard', @_);
  }
}
1;
