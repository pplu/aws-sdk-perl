# Generated from json/callresult_class.tt

package Paws::DirectConnect::DescribeTagsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_ResourceTag/;
  has ResourceTags => (is => 'ro', isa => ArrayRef[DirectConnect_ResourceTag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ResourceTags' => 'resourceTags'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResourceTags' => {
                                   'class' => 'Paws::DirectConnect::ResourceTag',
                                   'type' => 'ArrayRef[DirectConnect_ResourceTag]'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeTagsResponse

=head1 ATTRIBUTES


=head2 ResourceTags => ArrayRef[DirectConnect_ResourceTag]

Information about the tags.


=head2 _request_id => Str


=cut

1;