# Generated from json/callresult_class.tt

package Paws::Route53Domains::ListTagsForDomainResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Route53Domains::Types qw/Route53Domains_Tag/;
  has TagList => (is => 'ro', isa => ArrayRef[Route53Domains_Tag], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagList' => {
                              'class' => 'Paws::Route53Domains::Tag',
                              'type' => 'ArrayRef[Route53Domains_Tag]'
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

Paws::Route53Domains::ListTagsForDomainResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TagList => ArrayRef[Route53Domains_Tag]

A list of the tags that are associated with the specified domain.


=head2 _request_id => Str


=cut

1;