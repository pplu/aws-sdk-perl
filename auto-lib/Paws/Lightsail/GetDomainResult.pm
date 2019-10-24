# Generated from json/callresult_class.tt

package Paws::Lightsail::GetDomainResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_Domain/;
  has Domain => (is => 'ro', isa => Lightsail_Domain);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Domain' => {
                             'class' => 'Paws::Lightsail::Domain',
                             'type' => 'Lightsail_Domain'
                           }
             },
  'NameInRequest' => {
                       'Domain' => 'domain'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetDomainResult

=head1 ATTRIBUTES


=head2 Domain => Lightsail_Domain

An array of key-value pairs containing information about your get
domain request.


=head2 _request_id => Str


=cut

1;