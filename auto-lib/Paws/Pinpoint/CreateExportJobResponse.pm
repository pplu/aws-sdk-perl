
package Paws::Pinpoint::CreateExportJobResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ExportJobResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_ExportJobResponse/;
  has ExportJobResponse => (is => 'ro', isa => Pinpoint_ExportJobResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExportJobResponse' => {
                                        'type' => 'Pinpoint_ExportJobResponse',
                                        'class' => 'Paws::Pinpoint::ExportJobResponse'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ExportJobResponse' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CreateExportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportJobResponse => Pinpoint_ExportJobResponse




=head2 _request_id => Str


=cut

