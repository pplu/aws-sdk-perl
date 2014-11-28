
package Paws::ElasticTranscoder::TestRoleResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Messages => (is => 'ro', isa => 'ArrayRef[Str]');
  has Success => (is => 'ro', isa => 'Str');

}
1;