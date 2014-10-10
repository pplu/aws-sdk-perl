
package Aws::S3::GetObjectTorrent {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetObjectTorrent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::S3::GetObjectTorrentResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetObjectTorrentResult');
}
1;
