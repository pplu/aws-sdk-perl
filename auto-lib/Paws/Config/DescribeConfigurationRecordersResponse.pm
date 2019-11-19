# Generated from json/callresult_class.tt

package Paws::Config::DescribeConfigurationRecordersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_ConfigurationRecorder/;
  has ConfigurationRecorders => (is => 'ro', isa => ArrayRef[Config_ConfigurationRecorder]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConfigurationRecorders' => {
                                             'class' => 'Paws::Config::ConfigurationRecorder',
                                             'type' => 'ArrayRef[Config_ConfigurationRecorder]'
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

Paws::Config::DescribeConfigurationRecordersResponse

=head1 ATTRIBUTES


=head2 ConfigurationRecorders => ArrayRef[Config_ConfigurationRecorder]

A list that contains the descriptions of the specified configuration
recorders.


=head2 _request_id => Str


=cut

1;