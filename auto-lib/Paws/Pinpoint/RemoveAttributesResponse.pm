
package Paws::Pinpoint::RemoveAttributesResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'AttributesResource');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_AttributesResource/;
  has AttributesResource => (is => 'ro', isa => Pinpoint_AttributesResource, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AttributesResource' => {
                                         'class' => 'Paws::Pinpoint::AttributesResource',
                                         'type' => 'Pinpoint_AttributesResource'
                                       }
             },
  'IsRequired' => {
                    'AttributesResource' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::RemoveAttributesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributesResource => Pinpoint_AttributesResource




=head2 _request_id => Str


=cut

