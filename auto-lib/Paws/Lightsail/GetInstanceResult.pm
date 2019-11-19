# Generated from json/callresult_class.tt

package Paws::Lightsail::GetInstanceResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_Instance/;
  has Instance => (is => 'ro', isa => Lightsail_Instance);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Instance' => {
                               'class' => 'Paws::Lightsail::Instance',
                               'type' => 'Lightsail_Instance'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Instance' => 'instance'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstanceResult

=head1 ATTRIBUTES


=head2 Instance => Lightsail_Instance

An array of key-value pairs containing information about the specified
instance.


=head2 _request_id => Str


=cut

1;