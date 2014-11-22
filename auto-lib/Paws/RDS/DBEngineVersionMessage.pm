
package Paws::RDS::DBEngineVersionMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has DBEngineVersions => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBEngineVersion]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;