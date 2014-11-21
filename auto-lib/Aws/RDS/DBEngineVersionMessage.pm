
package Aws::RDS::DBEngineVersionMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBEngineVersions => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBEngineVersion]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;