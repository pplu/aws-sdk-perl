
package Paws::IoT::UpdateDynamicThingGroupResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw//;
  has Version => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Version' => 'version'
                     },
  'types' => {
               'Version' => {
                              'type' => 'Int'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateDynamicThingGroupResponse

=head1 ATTRIBUTES


=head2 Version => Int

The dynamic thing group version.


=head2 _request_id => Str


=cut

