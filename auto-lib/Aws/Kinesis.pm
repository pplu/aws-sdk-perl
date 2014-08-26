
use AWS::API;


package Aws::Kinesis::CreateStream {
  use Moose;
  has ShardCount => (is => 'ro', isa => 'Int', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStream');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Kinesis::DeleteStream {
  use Moose;
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStream');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Kinesis::DescribeStream {
  use Moose;
  has ExclusiveStartShardId => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Kinesis::DescribeStreamResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Kinesis::GetRecords {
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has ShardIterator => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRecords');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Kinesis::GetRecordsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Kinesis::GetShardIterator {
  use Moose;
  has ShardId => (is => 'ro', isa => 'Str', required => 1);
  has ShardIteratorType => (is => 'ro', isa => 'Str', required => 1);
  has StartingSequenceNumber => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetShardIterator');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Kinesis::GetShardIteratorResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Kinesis::ListStreams {
  use Moose;
  has ExclusiveStartStreamName => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStreams');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Kinesis::ListStreamsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Kinesis::MergeShards {
  use Moose;
  has AdjacentShardToMerge => (is => 'ro', isa => 'Str', required => 1);
  has ShardToMerge => (is => 'ro', isa => 'Str', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'MergeShards');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Kinesis::PutRecord {
  use Moose;
  has Data => (is => 'ro', isa => 'Str', required => 1);
  has ExplicitHashKey => (is => 'ro', isa => 'Str');
  has PartitionKey => (is => 'ro', isa => 'Str', required => 1);
  has SequenceNumberForOrdering => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRecord');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Kinesis::PutRecordResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Kinesis::SplitShard {
  use Moose;
  has NewStartingHashKey => (is => 'ro', isa => 'Str', required => 1);
  has ShardToSplit => (is => 'ro', isa => 'Str', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SplitShard');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
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
  has HasMoreStreams => (is => 'ro', isa => 'Bool', required => 1);
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
