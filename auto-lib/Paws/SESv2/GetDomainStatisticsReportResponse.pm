
package Paws::SESv2::GetDomainStatisticsReportResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SESv2::Types qw/SESv2_DailyVolume SESv2_OverallVolume/;
  has DailyVolumes => (is => 'ro', isa => ArrayRef[SESv2_DailyVolume], required => 1);
  has OverallVolume => (is => 'ro', isa => SESv2_OverallVolume, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'OverallVolume' => 1,
                    'DailyVolumes' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DailyVolumes' => {
                                   'class' => 'Paws::SESv2::DailyVolume',
                                   'type' => 'ArrayRef[SESv2_DailyVolume]'
                                 },
               'OverallVolume' => {
                                    'class' => 'Paws::SESv2::OverallVolume',
                                    'type' => 'SESv2_OverallVolume'
                                  }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetDomainStatisticsReportResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DailyVolumes => ArrayRef[SESv2_DailyVolume]

An object that contains deliverability metrics for the domain that you
specified. This object contains data for each day, starting on the
C<StartDate> and ending on the C<EndDate>.


=head2 B<REQUIRED> OverallVolume => SESv2_OverallVolume

An object that contains deliverability metrics for the domain that you
specified. The data in this object is a summary of all of the data that
was collected from the C<StartDate> to the C<EndDate>.


=head2 _request_id => Str


=cut

