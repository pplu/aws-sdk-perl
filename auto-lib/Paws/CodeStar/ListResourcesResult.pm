# Generated from json/callresult_class.tt

package Paws::CodeStar::ListResourcesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeStar::Types qw/CodeStar_Resource/;
  has NextToken => (is => 'ro', isa => Str);
  has Resources => (is => 'ro', isa => ArrayRef[CodeStar_Resource]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Resources' => 'resources'
                     },
  'types' => {
               'Resources' => {
                                'type' => 'ArrayRef[CodeStar_Resource]',
                                'class' => 'Paws::CodeStar::Resource'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::ListResourcesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The continuation token to use when requesting the next set of results,
if there are more results to be returned.


=head2 Resources => ArrayRef[CodeStar_Resource]

An array of resources associated with the project.


=head2 _request_id => Str


=cut

1;