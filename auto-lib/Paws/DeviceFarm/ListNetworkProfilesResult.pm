# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListNetworkProfilesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_NetworkProfile/;
  has NetworkProfiles => (is => 'ro', isa => ArrayRef[DeviceFarm_NetworkProfile]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NetworkProfiles' => 'networkProfiles',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'NetworkProfiles' => {
                                      'class' => 'Paws::DeviceFarm::NetworkProfile',
                                      'type' => 'ArrayRef[DeviceFarm_NetworkProfile]'
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

Paws::DeviceFarm::ListNetworkProfilesResult

=head1 ATTRIBUTES


=head2 NetworkProfiles => ArrayRef[DeviceFarm_NetworkProfile]

A list of the available network profiles.


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 _request_id => Str


=cut

1;