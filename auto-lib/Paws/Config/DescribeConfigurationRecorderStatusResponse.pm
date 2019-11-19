# Generated from json/callresult_class.tt

package Paws::Config::DescribeConfigurationRecorderStatusResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_ConfigurationRecorderStatus/;
  has ConfigurationRecordersStatus => (is => 'ro', isa => ArrayRef[Config_ConfigurationRecorderStatus]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConfigurationRecordersStatus' => {
                                                   'class' => 'Paws::Config::ConfigurationRecorderStatus',
                                                   'type' => 'ArrayRef[Config_ConfigurationRecorderStatus]'
                                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigurationRecorderStatusResponse

=head1 ATTRIBUTES


=head2 ConfigurationRecordersStatus => ArrayRef[Config_ConfigurationRecorderStatus]

A list that contains status of the specified recorders.


=head2 _request_id => Str


=cut

1;