# Generated from json/callresult_class.tt

package Paws::ACM::ListTagsForCertificateResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ACM::Types qw/ACM_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[ACM_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::ACM::Tag',
                           'type' => 'ArrayRef[ACM_Tag]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ACM::ListTagsForCertificateResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[ACM_Tag]

The key-value pairs that define the applied tags.


=head2 _request_id => Str


=cut

1;