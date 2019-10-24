
package Paws::Route53::ListTagsForResourceResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw/Route53_ResourceTagSet/;
  has ResourceTagSet => (is => 'ro', isa => Route53_ResourceTagSet, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResourceTagSet' => {
                                     'class' => 'Paws::Route53::ResourceTagSet',
                                     'type' => 'Route53_ResourceTagSet'
                                   }
             },
  'IsRequired' => {
                    'ResourceTagSet' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceTagSet => Route53_ResourceTagSet

A C<ResourceTagSet> containing tags associated with the specified
resource.




=cut

