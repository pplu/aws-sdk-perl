# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListInstanceProfilesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_InstanceProfile/;
  has InstanceProfiles => (is => 'ro', isa => ArrayRef[DeviceFarm_InstanceProfile]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'InstanceProfiles' => {
                                       'class' => 'Paws::DeviceFarm::InstanceProfile',
                                       'type' => 'ArrayRef[DeviceFarm_InstanceProfile]'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'InstanceProfiles' => 'instanceProfiles'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListInstanceProfilesResult

=head1 ATTRIBUTES


=head2 InstanceProfiles => ArrayRef[DeviceFarm_InstanceProfile]

An object containing information about your instance profiles.


=head2 NextToken => Str

An identifier that can be used in the next call to this operation to
return the next set of items in the list.


=head2 _request_id => Str


=cut

1;