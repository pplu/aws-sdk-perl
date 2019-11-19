
package Paws::Pinpoint::GetImportJobResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ImportJobResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_ImportJobResponse/;
  has ImportJobResponse => (is => 'ro', isa => Pinpoint_ImportJobResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ImportJobResponse' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ImportJobResponse' => {
                                        'type' => 'Pinpoint_ImportJobResponse',
                                        'class' => 'Paws::Pinpoint::ImportJobResponse'
                                      }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetImportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportJobResponse => Pinpoint_ImportJobResponse




=head2 _request_id => Str


=cut

