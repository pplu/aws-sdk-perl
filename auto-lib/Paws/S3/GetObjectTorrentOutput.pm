
package Paws::S3::GetObjectTorrentOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Body => (is => 'ro', isa => 'Str');

}
1;