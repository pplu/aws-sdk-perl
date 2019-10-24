# Generated from json/callresult_class.tt

package Paws::Lightsail::GetInstanceAccessDetailsResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_InstanceAccessDetails/;
  has AccessDetails => (is => 'ro', isa => Lightsail_InstanceAccessDetails);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccessDetails' => {
                                    'class' => 'Paws::Lightsail::InstanceAccessDetails',
                                    'type' => 'Lightsail_InstanceAccessDetails'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'AccessDetails' => 'accessDetails'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstanceAccessDetailsResult

=head1 ATTRIBUTES


=head2 AccessDetails => Lightsail_InstanceAccessDetails

An array of key-value pairs containing information about a get instance
access request.


=head2 _request_id => Str


=cut

1;