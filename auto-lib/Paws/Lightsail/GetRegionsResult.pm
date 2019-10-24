# Generated from json/callresult_class.tt

package Paws::Lightsail::GetRegionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_Region/;
  has Regions => (is => 'ro', isa => ArrayRef[Lightsail_Region]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Regions' => {
                              'class' => 'Paws::Lightsail::Region',
                              'type' => 'ArrayRef[Lightsail_Region]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Regions' => 'regions'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRegionsResult

=head1 ATTRIBUTES


=head2 Regions => ArrayRef[Lightsail_Region]

An array of key-value pairs containing information about your get
regions request.


=head2 _request_id => Str


=cut

1;