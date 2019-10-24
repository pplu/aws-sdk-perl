# Generated from json/callresult_class.tt

package Paws::Lightsail::GetStaticIpResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_StaticIp/;
  has StaticIp => (is => 'ro', isa => Lightsail_StaticIp);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StaticIp' => {
                               'class' => 'Paws::Lightsail::StaticIp',
                               'type' => 'Lightsail_StaticIp'
                             }
             },
  'NameInRequest' => {
                       'StaticIp' => 'staticIp'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetStaticIpResult

=head1 ATTRIBUTES


=head2 StaticIp => Lightsail_StaticIp

An array of key-value pairs containing information about the requested
static IP.


=head2 _request_id => Str


=cut

1;