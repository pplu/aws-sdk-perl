# Generated from json/callresult_class.tt

package Paws::Lightsail::PutInstancePublicPortsResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_Operation/;
  has Operation => (is => 'ro', isa => Lightsail_Operation);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Operation' => {
                                'class' => 'Paws::Lightsail::Operation',
                                'type' => 'Lightsail_Operation'
                              }
             },
  'NameInRequest' => {
                       'Operation' => 'operation'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::PutInstancePublicPortsResult

=head1 ATTRIBUTES


=head2 Operation => Lightsail_Operation

Describes metadata about the operation you just executed.


=head2 _request_id => Str


=cut

1;