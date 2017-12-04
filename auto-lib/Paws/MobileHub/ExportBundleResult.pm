
package Paws::MobileHub::ExportBundleResult;
  use Moose;
  has DownloadUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'downloadUrl');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::ExportBundleResult

=head1 ATTRIBUTES


=head2 DownloadUrl => Str

URL which contains the custom-generated SDK and tool packages used to
integrate the client mobile app or web app with the AWS resources
created by the AWS Mobile Hub project.


=head2 _request_id => Str


=cut

