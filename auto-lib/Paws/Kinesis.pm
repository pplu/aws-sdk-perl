
use Paws::API;


package Paws::Kinesis {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'kinesis');
  has version => (is => 'ro', isa => 'Str', default => '2013-12-02');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'Kinesis_20131202');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub AddTagsToStream {
    my $self = shift;
    return $self->do_call('Paws::Kinesis::AddTagsToStream', @_);
  }
  sub CreateStream {
    my $self = shift;
    return $self->do_call('Paws::Kinesis::CreateStream', @_);
  }
  sub DeleteStream {
    my $self = shift;
    return $self->do_call('Paws::Kinesis::DeleteStream', @_);
  }
  sub DescribeStream {
    my $self = shift;
    return $self->do_call('Paws::Kinesis::DescribeStream', @_);
  }
  sub GetRecords {
    my $self = shift;
    return $self->do_call('Paws::Kinesis::GetRecords', @_);
  }
  sub GetShardIterator {
    my $self = shift;
    return $self->do_call('Paws::Kinesis::GetShardIterator', @_);
  }
  sub ListStreams {
    my $self = shift;
    return $self->do_call('Paws::Kinesis::ListStreams', @_);
  }
  sub ListTagsForStream {
    my $self = shift;
    return $self->do_call('Paws::Kinesis::ListTagsForStream', @_);
  }
  sub MergeShards {
    my $self = shift;
    return $self->do_call('Paws::Kinesis::MergeShards', @_);
  }
  sub PutRecord {
    my $self = shift;
    return $self->do_call('Paws::Kinesis::PutRecord', @_);
  }
  sub RemoveTagsFromStream {
    my $self = shift;
    return $self->do_call('Paws::Kinesis::RemoveTagsFromStream', @_);
  }
  sub SplitShard {
    my $self = shift;
    return $self->do_call('Paws::Kinesis::SplitShard', @_);
  }
}
1;
