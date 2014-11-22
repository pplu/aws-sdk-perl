
package Paws::Kinesis::ListStreams {
  use Moose;
  has ExclusiveStartStreamName => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStreams');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::ListStreamsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;