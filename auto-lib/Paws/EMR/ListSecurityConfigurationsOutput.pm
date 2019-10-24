# Generated from json/callresult_class.tt

package Paws::EMR::ListSecurityConfigurationsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::EMR::Types qw/EMR_SecurityConfigurationSummary/;
  has Marker => (is => 'ro', isa => Str);
  has SecurityConfigurations => (is => 'ro', isa => ArrayRef[EMR_SecurityConfigurationSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SecurityConfigurations' => {
                                             'class' => 'Paws::EMR::SecurityConfigurationSummary',
                                             'type' => 'ArrayRef[EMR_SecurityConfigurationSummary]'
                                           },
               'Marker' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListSecurityConfigurationsOutput

=head1 ATTRIBUTES


=head2 Marker => Str

A pagination token that indicates the next set of results to retrieve.
Include the marker in the next ListSecurityConfiguration call to
retrieve the next page of results, if required.


=head2 SecurityConfigurations => ArrayRef[EMR_SecurityConfigurationSummary]

The creation date and time, and name, of each security configuration.


=head2 _request_id => Str


=cut

1;