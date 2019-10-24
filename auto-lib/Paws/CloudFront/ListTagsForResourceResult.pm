
package Paws::CloudFront::ListTagsForResourceResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_Tags/;
  has Tags => (is => 'ro', isa => CloudFront_Tags, required => 1);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'Tags');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::CloudFront::Tags',
                           'type' => 'CloudFront_Tags'
                         }
             },
  'IsRequired' => {
                    'Tags' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListTagsForResourceResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => CloudFront_Tags

A complex type that contains zero or more C<Tag> elements.




=cut

