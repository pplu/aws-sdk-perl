# Generated from json/callresult_class.tt

package Paws::CloudHSM::ListHapgsResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::CloudHSM::Types qw//;
  has HapgList => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'HapgList' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'HapgList' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::ListHapgsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HapgList => ArrayRef[Str|Undef]

The list of high-availability partition groups.


=head2 NextToken => Str

If not null, more results are available. Pass this value to
C<ListHapgs> to retrieve the next set of items.


=head2 _request_id => Str


=cut

1;