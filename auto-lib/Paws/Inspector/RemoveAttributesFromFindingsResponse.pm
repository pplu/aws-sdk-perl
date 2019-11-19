# Generated from json/callresult_class.tt

package Paws::Inspector::RemoveAttributesFromFindingsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Inspector::Types qw/Inspector_FailedItems/;
  has FailedItems => (is => 'ro', isa => Inspector_FailedItems, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'FailedItems' => 1
                  },
  'NameInRequest' => {
                       'FailedItems' => 'failedItems'
                     },
  'types' => {
               'FailedItems' => {
                                  'class' => 'Paws::Inspector::FailedItems',
                                  'type' => 'Inspector_FailedItems'
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

Paws::Inspector::RemoveAttributesFromFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailedItems => Inspector_FailedItems

Attributes details that cannot be described. An error code is provided
for each failed item.


=head2 _request_id => Str


=cut

1;