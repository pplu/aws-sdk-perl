# Generated from json/callresult_class.tt

package Paws::CloudHSMv2::ListTagsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudHSMv2::Types qw/CloudHSMv2_Tag/;
  has NextToken => (is => 'ro', isa => Str);
  has TagList => (is => 'ro', isa => ArrayRef[CloudHSMv2_Tag], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagList' => {
                              'class' => 'Paws::CloudHSMv2::Tag',
                              'type' => 'ArrayRef[CloudHSMv2_Tag]'
                            },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::CloudHSMv2::ListTagsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An opaque string that indicates that the response contains only a
subset of tags. Use this value in a subsequent C<ListTags> request to
get more tags.


=head2 B<REQUIRED> TagList => ArrayRef[CloudHSMv2_Tag]

A list of tags.


=head2 _request_id => Str


=cut

1;