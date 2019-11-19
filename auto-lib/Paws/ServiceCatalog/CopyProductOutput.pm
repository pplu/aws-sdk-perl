# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::CopyProductOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceCatalog::Types qw//;
  has CopyProductToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CopyProductToken' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CopyProductOutput

=head1 ATTRIBUTES


=head2 CopyProductToken => Str

The token to use to track the progress of the operation.


=head2 _request_id => Str


=cut

1;