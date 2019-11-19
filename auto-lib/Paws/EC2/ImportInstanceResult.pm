
package Paws::EC2::ImportInstanceResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ConversionTask/;
  has ConversionTask => (is => 'ro', isa => EC2_ConversionTask);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConversionTask' => {
                                     'type' => 'EC2_ConversionTask',
                                     'class' => 'Paws::EC2::ConversionTask'
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

Paws::EC2::ImportInstanceResult

=head1 ATTRIBUTES


=head2 ConversionTask => EC2_ConversionTask

Information about the conversion task.


=head2 _request_id => Str


=cut

