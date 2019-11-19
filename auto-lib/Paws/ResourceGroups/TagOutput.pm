
package Paws::ResourceGroups::TagOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ResourceGroups::Types qw/ResourceGroups_Tags/;
  has Arn => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ResourceGroups_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Arn' => {
                          'type' => 'Str'
                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'ResourceGroups_Tags',
                           'class' => 'Paws::ResourceGroups::Tags'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::TagOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the tagged resource.


=head2 Tags => ResourceGroups_Tags

The tags that have been added to the specified resource.


=head2 _request_id => Str


=cut

