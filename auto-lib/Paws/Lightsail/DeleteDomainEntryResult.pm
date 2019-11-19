# Generated from json/callresult_class.tt

package Paws::Lightsail::DeleteDomainEntryResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_Operation/;
  has Operation => (is => 'ro', isa => Lightsail_Operation);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Operation' => 'operation'
                     },
  'types' => {
               'Operation' => {
                                'type' => 'Lightsail_Operation',
                                'class' => 'Paws::Lightsail::Operation'
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

Paws::Lightsail::DeleteDomainEntryResult

=head1 ATTRIBUTES


=head2 Operation => Lightsail_Operation

An array of key-value pairs containing information about the results of
your delete domain entry request.


=head2 _request_id => Str


=cut

1;