
package Paws::SESv2::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SESv2::Types qw/SESv2_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[SESv2_Tag], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Tags' => 1
                  },
  'types' => {
               'Tags' => {
                           'class' => 'Paws::SESv2::Tag',
                           'type' => 'ArrayRef[SESv2_Tag]'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => ArrayRef[SESv2_Tag]

An array that lists all the tags that are associated with the resource.
Each tag consists of a required tag key (C<Key>) and an associated tag
value (C<Value>)


=head2 _request_id => Str


=cut

