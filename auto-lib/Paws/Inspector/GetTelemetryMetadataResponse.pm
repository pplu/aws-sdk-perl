# Generated from json/callresult_class.tt

package Paws::Inspector::GetTelemetryMetadataResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Inspector::Types qw/Inspector_TelemetryMetadata/;
  has TelemetryMetadata => (is => 'ro', isa => ArrayRef[Inspector_TelemetryMetadata], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TelemetryMetadata' => {
                                        'type' => 'ArrayRef[Inspector_TelemetryMetadata]',
                                        'class' => 'Paws::Inspector::TelemetryMetadata'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TelemetryMetadata' => 'telemetryMetadata'
                     },
  'IsRequired' => {
                    'TelemetryMetadata' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::GetTelemetryMetadataResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TelemetryMetadata => ArrayRef[Inspector_TelemetryMetadata]

Telemetry details.


=head2 _request_id => Str


=cut

1;