
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
<<<<<<< HEAD:auto-lib/AWS/Kinesis.pm
enum 'AWS::Kinesis::StreamStatus', ['CREATING','DELETING','ACTIVE','UPDATING',];
=======
enum 'Aws::Kinesis::StreamStatus', [qw(CREATING DELETING ACTIVE UPDATING )];
>>>>>>> 323bbcedd10d641f975a57cc3645d986efd7a617:auto-lib/Aws/Kinesis.pm


class Aws::Kinesis::Record with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Data => (is => 'ro', isa => 'Str', required => 1);
  has PartitionKey => (is => 'ro', isa => 'Str', required => 1);
  has SequenceNumber => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::Kinesis::Shard with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AdjacentParentShardId => (is => 'ro', isa => 'Str');
  has HashKeyRange => (is => 'ro', isa => 'Aws::Kinesis::HashKeyRange', required => 1);
  has ParentShardId => (is => 'ro', isa => 'Str');
  has SequenceNumberRange => (is => 'ro', isa => 'Aws::Kinesis::SequenceNumberRange', required => 1);
  has ShardId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::Kinesis::StreamDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has HasMoreShards => (is => 'ro', isa => 'Str', required => 1);
  has Shards => (is => 'ro', isa => 'ArrayRef[Aws::Kinesis::Shard]', required => 1);
  has StreamARN => (is => 'ro', isa => 'Str', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);
  has StreamStatus => (is => 'ro', isa => 'Aws::Kinesis::StreamStatus', required => 1);
}



class Aws::Kinesis::CreateStream {
  has ShardCount => (is => 'ro', isa => 'Int', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStream');
  has _returns => (isa => 'Aws::Kinesis::CreateStreamResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStreamResult');  
}
class Aws::Kinesis::DeleteStream {
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStream');
  has _returns => (isa => 'Aws::Kinesis::DeleteStreamResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteStreamResult');  
}
class Aws::Kinesis::DescribeStream {
  has ExclusiveStartShardId => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStream');
  has _returns => (isa => 'Aws::Kinesis::DescribeStreamResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStreamResult');  
}
class Aws::Kinesis::GetRecords {
  has Limit => (is => 'ro', isa => 'Int');
  has ShardIterator => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetRecords');
  has _returns => (isa => 'Aws::Kinesis::GetRecordsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetRecordsResult');  
}
class Aws::Kinesis::GetShardIterator {
  has ShardId => (is => 'ro', isa => 'Str', required => 1);
  has ShardIteratorType => (is => 'ro', isa => 'Str', required => 1);
  has StartingSequenceNumber => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetShardIterator');
  has _returns => (isa => 'Aws::Kinesis::GetShardIteratorResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetShardIteratorResult');  
}
class Aws::Kinesis::ListStreams {
  has ExclusiveStartStreamName => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListStreams');
  has _returns => (isa => 'Aws::Kinesis::ListStreamsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListStreamsResult');  
}
class Aws::Kinesis::MergeShards {
  has AdjacentShardToMerge => (is => 'ro', isa => 'Str', required => 1);
  has ShardToMerge => (is => 'ro', isa => 'Str', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'MergeShards');
  has _returns => (isa => 'Aws::Kinesis::MergeShardsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'MergeShardsResult');  
}
class Aws::Kinesis::PutRecord {
  has Data => (is => 'ro', isa => 'Str', required => 1);
  has ExplicitHashKey => (is => 'ro', isa => 'Str');
  has PartitionKey => (is => 'ro', isa => 'Str', required => 1);
  has SequenceNumberForOrdering => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutRecord');
  has _returns => (isa => 'Aws::Kinesis::PutRecordResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutRecordResult');  
}
class Aws::Kinesis::SplitShard {
  has NewStartingHashKey => (is => 'ro', isa => 'Str', required => 1);
  has ShardToSplit => (is => 'ro', isa => 'Str', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SplitShard');
  has _returns => (isa => 'Aws::Kinesis::SplitShardResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SplitShardResult');  
}

class Aws::Kinesis::DescribeStreamResult with AWS::API::ResultParser {
  has StreamDescription => (is => 'ro', isa => 'Aws::Kinesis::StreamDescription', required => 1);

}
class Aws::Kinesis::GetRecordsResult with AWS::API::ResultParser {
  has NextShardIterator => (is => 'ro', isa => 'Str');
  has Records => (is => 'ro', isa => 'ArrayRef[Aws::Kinesis::Record]', required => 1);

}
class Aws::Kinesis::GetShardIteratorResult with AWS::API::ResultParser {
  has ShardIterator => (is => 'ro', isa => 'Str');

}
class Aws::Kinesis::ListStreamsResult with AWS::API::ResultParser {
  has HasMoreStreams => (is => 'ro', isa => 'Str', required => 1);
  has StreamNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
class Aws::Kinesis::PutRecordResult with AWS::API::ResultParser {
  has SequenceNumber => (is => 'ro', isa => 'Str', required => 1);
  has ShardId => (is => 'ro', isa => 'Str', required => 1);

}

class Aws::Kinesis with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::JsonCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'kinesis');
  has version => (is => 'ro', isa => 'Str', default => '2013-12-02');
  
  method CreateStream (%args) {
    my $call = Aws::Kinesis::CreateStream->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteStream (%args) {
    my $call = Aws::Kinesis::DeleteStream->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DescribeStream (%args) {
    my $call = Aws::Kinesis::DescribeStream->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Kinesis::DescribeStreamResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetRecords (%args) {
    my $call = Aws::Kinesis::GetRecords->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Kinesis::GetRecordsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetShardIterator (%args) {
    my $call = Aws::Kinesis::GetShardIterator->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Kinesis::GetShardIteratorResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListStreams (%args) {
    my $call = Aws::Kinesis::ListStreams->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Kinesis::ListStreamsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method MergeShards (%args) {
    my $call = Aws::Kinesis::MergeShards->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method PutRecord (%args) {
    my $call = Aws::Kinesis::PutRecord->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Kinesis::PutRecordResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SplitShard (%args) {
    my $call = Aws::Kinesis::SplitShard->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
