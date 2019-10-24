
package Paws::Route53::ListTagsForResourcesResponse;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::Route53::Types qw/Route53_ResourceTagSet/;
  has ResourceTagSets => (is => 'ro', isa => ArrayRef[Route53_ResourceTagSet], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceTagSets' => {
                                      'class' => 'Paws::Route53::ResourceTagSet',
                                      'type' => 'ArrayRef[Route53_ResourceTagSet]'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ResourceTagSets' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListTagsForResourcesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceTagSets => ArrayRef[Route53_ResourceTagSet]

A list of C<ResourceTagSet>s containing tags associated with the
specified resources.




=cut

