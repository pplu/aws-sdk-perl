
package Paws::Pinpoint::GetExportJobResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ExportJobResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_ExportJobResponse/;
  has ExportJobResponse => (is => 'ro', isa => Pinpoint_ExportJobResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ExportJobResponse' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ExportJobResponse' => {
                                        'class' => 'Paws::Pinpoint::ExportJobResponse',
                                        'type' => 'Pinpoint_ExportJobResponse'
                                      }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetExportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportJobResponse => Pinpoint_ExportJobResponse




=head2 _request_id => Str


=cut

