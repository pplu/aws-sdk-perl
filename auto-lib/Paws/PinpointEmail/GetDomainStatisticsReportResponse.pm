
package Paws::PinpointEmail::GetDomainStatisticsReportResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::PinpointEmail::Types qw/PinpointEmail_OverallVolume PinpointEmail_DailyVolume/;
  has DailyVolumes => (is => 'ro', isa => ArrayRef[PinpointEmail_DailyVolume], required => 1);
  has OverallVolume => (is => 'ro', isa => PinpointEmail_OverallVolume, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DailyVolumes' => 1,
                    'OverallVolume' => 1
                  },
  'types' => {
               'OverallVolume' => {
                                    'type' => 'PinpointEmail_OverallVolume',
                                    'class' => 'Paws::PinpointEmail::OverallVolume'
                                  },
               'DailyVolumes' => {
                                   'class' => 'Paws::PinpointEmail::DailyVolume',
                                   'type' => 'ArrayRef[PinpointEmail_DailyVolume]'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::GetDomainStatisticsReportResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DailyVolumes => ArrayRef[PinpointEmail_DailyVolume]

An object that contains deliverability metrics for the domain that you
specified. This object contains data for each day, starting on the
C<StartDate> and ending on the C<EndDate>.


=head2 B<REQUIRED> OverallVolume => PinpointEmail_OverallVolume

An object that contains deliverability metrics for the domain that you
specified. The data in this object is a summary of all of the data that
was collected from the C<StartDate> to the C<EndDate>.


=head2 _request_id => Str


=cut

