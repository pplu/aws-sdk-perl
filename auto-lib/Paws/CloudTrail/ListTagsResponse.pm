# Generated from json/callresult_class.tt

package Paws::CloudTrail::ListTagsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudTrail::Types qw/CloudTrail_ResourceTag/;
  has NextToken => (is => 'ro', isa => Str);
  has ResourceTagList => (is => 'ro', isa => ArrayRef[CloudTrail_ResourceTag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceTagList' => {
                                      'class' => 'Paws::CloudTrail::ResourceTag',
                                      'type' => 'ArrayRef[CloudTrail_ResourceTag]'
                                    },
               'NextToken' => {
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

Paws::CloudTrail::ListTagsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Reserved for future use.


=head2 ResourceTagList => ArrayRef[CloudTrail_ResourceTag]

A list of resource tags.


=head2 _request_id => Str


=cut

1;