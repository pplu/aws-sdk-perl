# Generated from json/callresult_class.tt

package Paws::Lightsail::StopInstanceResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_Operation/;
  has Operations => (is => 'ro', isa => ArrayRef[Lightsail_Operation]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Operations' => {
                                 'class' => 'Paws::Lightsail::Operation',
                                 'type' => 'ArrayRef[Lightsail_Operation]'
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

Paws::Lightsail::StopInstanceResult

=head1 ATTRIBUTES


=head2 Operations => ArrayRef[Lightsail_Operation]

An array of key-value pairs containing information about the request
operation.


=head2 _request_id => Str


=cut

1;