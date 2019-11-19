# Generated from json/callresult_class.tt

package Paws::Lightsail::RebootInstanceResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_Operation/;
  has Operations => (is => 'ro', isa => ArrayRef[Lightsail_Operation]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Operations' => {
                                 'type' => 'ArrayRef[Lightsail_Operation]',
                                 'class' => 'Paws::Lightsail::Operation'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Operations' => 'operations'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::RebootInstanceResult

=head1 ATTRIBUTES


=head2 Operations => ArrayRef[Lightsail_Operation]

An array of key-value pairs containing information about the request
operations.


=head2 _request_id => Str


=cut

1;