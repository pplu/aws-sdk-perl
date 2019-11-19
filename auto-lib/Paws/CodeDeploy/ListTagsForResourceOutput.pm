# Generated from json/callresult_class.tt

package Paws::CodeDeploy::ListTagsForResourceOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_Tag/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[CodeDeploy_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Tags' => {
                           'class' => 'Paws::CodeDeploy::Tag',
                           'type' => 'ArrayRef[CodeDeploy_Tag]'
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

Paws::CodeDeploy::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If a large amount of information is returned, an identifier is also
returned. It can be used in a subsequent list application revisions
call to return the next set of application revisions in the list.


=head2 Tags => ArrayRef[CodeDeploy_Tag]

A list of tags returned by C<ListTagsForResource>. The tags are
associated with the resource identified by the input C<ResourceArn>
parameter.


=head2 _request_id => Str


=cut

1;