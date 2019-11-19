
package Paws::MobileHub::ExportBundleResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MobileHub::Types qw//;
  has DownloadUrl => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DownloadUrl' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DownloadUrl' => 'downloadUrl'
                     }
}
;
    return $Params_map;
  }

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

