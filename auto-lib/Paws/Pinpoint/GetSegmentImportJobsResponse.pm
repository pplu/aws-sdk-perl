
package Paws::Pinpoint::GetSegmentImportJobsResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ImportJobsResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_ImportJobsResponse/;
  has ImportJobsResponse => (is => 'ro', isa => Pinpoint_ImportJobsResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ImportJobsResponse' => {
                                         'class' => 'Paws::Pinpoint::ImportJobsResponse',
                                         'type' => 'Pinpoint_ImportJobsResponse'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ImportJobsResponse' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetSegmentImportJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportJobsResponse => Pinpoint_ImportJobsResponse




=head2 _request_id => Str


=cut

