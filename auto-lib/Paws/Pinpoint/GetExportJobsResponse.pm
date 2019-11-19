
package Paws::Pinpoint::GetExportJobsResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ExportJobsResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_ExportJobsResponse/;
  has ExportJobsResponse => (is => 'ro', isa => Pinpoint_ExportJobsResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ExportJobsResponse' => {
                                         'class' => 'Paws::Pinpoint::ExportJobsResponse',
                                         'type' => 'Pinpoint_ExportJobsResponse'
                                       }
             },
  'IsRequired' => {
                    'ExportJobsResponse' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetExportJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportJobsResponse => Pinpoint_ExportJobsResponse




=head2 _request_id => Str


=cut

