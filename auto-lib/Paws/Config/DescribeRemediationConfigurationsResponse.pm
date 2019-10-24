# Generated from json/callresult_class.tt

package Paws::Config::DescribeRemediationConfigurationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_RemediationConfiguration/;
  has RemediationConfigurations => (is => 'ro', isa => ArrayRef[Config_RemediationConfiguration]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RemediationConfigurations' => {
                                                'class' => 'Paws::Config::RemediationConfiguration',
                                                'type' => 'ArrayRef[Config_RemediationConfiguration]'
                                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeRemediationConfigurationsResponse

=head1 ATTRIBUTES


=head2 RemediationConfigurations => ArrayRef[Config_RemediationConfiguration]

Returns a remediation configuration object.


=head2 _request_id => Str


=cut

1;