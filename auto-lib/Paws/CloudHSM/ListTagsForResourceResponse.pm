# Generated from json/callresult_class.tt

package Paws::CloudHSM::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudHSM::Types qw/CloudHSM_Tag/;
  has TagList => (is => 'ro', isa => ArrayRef[CloudHSM_Tag], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagList' => {
                              'class' => 'Paws::CloudHSM::Tag',
                              'type' => 'ArrayRef[CloudHSM_Tag]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'TagList' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TagList => ArrayRef[CloudHSM_Tag]

One or more tags.


=head2 _request_id => Str


=cut

1;