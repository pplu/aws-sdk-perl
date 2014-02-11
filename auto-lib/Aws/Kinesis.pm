
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::Kinesis::StreamStatus', ['CREATING','DELETING','ACTIVE','UPDATING',];


package Aws::Kinesis::HashKeyRange {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has EndingHashKey => (is => 'ro', isa => 'Str', required => 1);
  has StartingHashKey => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::Kinesis::Record {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Data => (is => 'ro', isa => 'Str', required => 1);
  has PartitionKey => (is => 'ro', isa => 'Str', required => 1);
  has SequenceNumber => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::Kinesis::SequenceNumberRange {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has EndingSequenceNumber => (is => 'ro', isa => 'Str');
  has StartingSequenceNumber => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::Kinesis::Shard {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AdjacentParentShardId => (is => 'ro', isa => 'Str');
  has HashKeyRange => (is => 'ro', isa => 'Aws::Kinesis::HashKeyRange', required => 1);
  has ParentShardId => (is => 'ro', isa => 'Str');
  has SequenceNumberRange => (is => 'ro', isa => 'Aws::Kinesis::SequenceNumberRange', required => 1);
  has ShardId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::Kinesis::StreamDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has HasMoreShards => (is => 'ro', isa => 'Str', required => 1);
  has Shards => (is => 'ro', isa => 'ArrayRef[Aws::Kinesis::Shard]', required => 1);
  has StreamARN => (is => 'ro', isa => 'Str', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);
  has StreamStatus => (is => 'ro', isa => 'Aws::Kinesis::StreamStatus', required => 1);
}



package Aws::Kinesis::CreateStream {
  use Moose;
  has ShardCount => (is => 'ro', isa => 'Int', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStream');
  has _returns => (isa => 'Aws::Kinesis::CreateStreamResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStreamResult');  
}
package Aws::Kinesis::DeleteStream {
  use Moose;
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStream');
  has _returns => (isa => 'Aws::Kinesis::DeleteStreamResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteStreamResult');  
}
package Aws::Kinesis::DescribeStream {
  use Moose;
  has ExclusiveStartShardId => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStream');
  has _returns => (isa => 'Aws::Kinesis::DescribeStreamResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStreamResult');  
}
package Aws::Kinesis::GetRecords {
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has ShardIterator => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetRecords');
  has _returns => (isa => 'Aws::Kinesis::GetRecordsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetRecordsResult');  
}
package Aws::Kinesis::GetShardIterator {
  use Moose;
  has ShardId => (is => 'ro', isa => 'Str', required => 1);
  has ShardIteratorType => (is => 'ro', isa => 'Str', required => 1);
  has StartingSequenceNumber => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetShardIterator');
  has _returns => (isa => 'Aws::Kinesis::GetShardIteratorResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetShardIteratorResult');  
}
package Aws::Kinesis::ListStreams {
  use Moose;
  has ExclusiveStartStreamName => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListStreams');
  has _returns => (isa => 'Aws::Kinesis::ListStreamsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListStreamsResult');  
}
package Aws::Kinesis::MergeShards {
  use Moose;
  has AdjacentShardToMerge => (is => 'ro', isa => 'Str', required => 1);
  has ShardToMerge => (is => 'ro', isa => 'Str', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'MergeShards');
  has _returns => (isa => 'Aws::Kinesis::MergeShardsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'MergeShardsResult');  
}
package Aws::Kinesis::PutRecord {
  use Moose;
  has Data => (is => 'ro', isa => 'Str', required => 1);
  has ExplicitHashKey => (is => 'ro', isa => 'Str');
  has PartitionKey => (is => 'ro', isa => 'Str', required => 1);
  has SequenceNumberForOrdering => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutRecord');
  has _returns => (isa => 'Aws::Kinesis::PutRecordResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutRecordResult');  
}
package Aws::Kinesis::SplitShard {
  use Moose;
  has NewStartingHashKey => (is => 'ro', isa => 'Str', required => 1);
  has ShardToSplit => (is => 'ro', isa => 'Str', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SplitShard');
  has _returns => (isa => 'Aws::Kinesis::SplitShardResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SplitShardResult');  
}

package Aws::Kinesis::DescribeStreamResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has StreamDescription => (is => 'ro', isa => 'Aws::Kinesis::StreamDescription', required => 1);

}
package Aws::Kinesis::GetRecordsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextShardIterator => (is => 'ro', isa => 'Str');
  has Records => (is => 'ro', isa => 'ArrayRef[Aws::Kinesis::Record]', required => 1);

}
package Aws::Kinesis::GetShardIteratorResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ShardIterator => (is => 'ro', isa => 'Str');

}
package Aws::Kinesis::ListStreamsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HasMoreStreams => (is => 'ro', isa => 'Str', required => 1);
  has StreamNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
package Aws::Kinesis::PutRecordResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SequenceNumber => (is => 'ro', isa => 'Str', required => 1);
  has ShardId => (is => 'ro', isa => 'Str', required => 1);

}

package Aws::Kinesis {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'kinesis');
  has version => (is => 'ro', isa => 'Str', default => '2013-12-02');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'Kinesis_20131202');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::JsonCaller', 'Net::AWS::JsonResponse');
  
  sub CreateStream {
    my $self = shift;
    my $call = new_with_coercions('Aws::Kinesis::CreateStream', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteStream {
    my $self = shift;
    my $call = new_with_coercions('Aws::Kinesis::DeleteStream', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DescribeStream {
    my $self = shift;
    my $call = new_with_coercions('Aws::Kinesis::DescribeStream', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Kinesis::DescribeStreamResult->from_result($result);return $o_result;
  }
  sub GetRecords {
    my $self = shift;
    my $call = new_with_coercions('Aws::Kinesis::GetRecords', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Kinesis::GetRecordsResult->from_result($result);return $o_result;
  }
  sub GetShardIterator {
    my $self = shift;
    my $call = new_with_coercions('Aws::Kinesis::GetShardIterator', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Kinesis::GetShardIteratorResult->from_result($result);return $o_result;
  }
  sub ListStreams {
    my $self = shift;
    my $call = new_with_coercions('Aws::Kinesis::ListStreams', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Kinesis::ListStreamsResult->from_result($result);return $o_result;
  }
  sub MergeShards {
    my $self = shift;
    my $call = new_with_coercions('Aws::Kinesis::MergeShards', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub PutRecord {
    my $self = shift;
    my $call = new_with_coercions('Aws::Kinesis::PutRecord', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Kinesis::PutRecordResult->from_result($result);return $o_result;
  }
  sub SplitShard {
    my $self = shift;
    my $call = new_with_coercions('Aws::Kinesis::SplitShard', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
