# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListVPCEConfigurationsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_VPCEConfiguration/;
  has NextToken => (is => 'ro', isa => Str);
  has VpceConfigurations => (is => 'ro', isa => ArrayRef[DeviceFarm_VPCEConfiguration]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'VpceConfigurations' => {
                                         'class' => 'Paws::DeviceFarm::VPCEConfiguration',
                                         'type' => 'ArrayRef[DeviceFarm_VPCEConfiguration]'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'VpceConfigurations' => 'vpceConfigurations'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListVPCEConfigurationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 VpceConfigurations => ArrayRef[DeviceFarm_VPCEConfiguration]

An array of C<VPCEConfiguration> objects containing information about
your VPC endpoint configuration.


=head2 _request_id => Str


=cut

1;