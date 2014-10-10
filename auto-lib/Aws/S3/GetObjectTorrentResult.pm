
package Aws::S3::GetObjectTorrentResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Body => (is => 'ro', isa => 'Str');

}
1;