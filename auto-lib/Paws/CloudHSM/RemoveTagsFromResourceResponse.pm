# Generated from json/callresult_class.tt

package Paws::CloudHSM::RemoveTagsFromResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudHSM::Types qw//;
  has Status => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Status' => 1
                  },
  'types' => {
               'Status' => {
                             'type' => 'Str'
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

Paws::CloudHSM::RemoveTagsFromResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

The status of the operation.


=head2 _request_id => Str


=cut

1;