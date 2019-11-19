
package Paws::ResourceGroups::GetTagsOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ResourceGroups::Types qw/ResourceGroups_Tags/;
  has Arn => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ResourceGroups_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::ResourceGroups::Tags',
                           'type' => 'ResourceGroups_Tags'
                         },
               'Arn' => {
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

Paws::ResourceGroups::GetTagsOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the tagged resource group.


=head2 Tags => ResourceGroups_Tags

The tags associated with the specified resource group.


=head2 _request_id => Str


=cut

