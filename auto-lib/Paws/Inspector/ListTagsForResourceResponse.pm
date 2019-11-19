# Generated from json/callresult_class.tt

package Paws::Inspector::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Inspector::Types qw/Inspector_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[Inspector_Tag], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Tags' => 1
                  },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'types' => {
               'Tags' => {
                           'type' => 'ArrayRef[Inspector_Tag]',
                           'class' => 'Paws::Inspector::Tag'
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

Paws::Inspector::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => ArrayRef[Inspector_Tag]

A collection of key and value pairs.


=head2 _request_id => Str


=cut

1;