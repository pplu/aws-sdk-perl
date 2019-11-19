
package Paws::EC2::ImportVolumeResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ConversionTask/;
  has ConversionTask => (is => 'ro', isa => EC2_ConversionTask);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConversionTask' => {
                                     'class' => 'Paws::EC2::ConversionTask',
                                     'type' => 'EC2_ConversionTask'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ConversionTask' => 'conversionTask'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportVolumeResult

=head1 ATTRIBUTES


=head2 ConversionTask => EC2_ConversionTask

Information about the conversion task.


=head2 _request_id => Str


=cut

