# Generated from json/callresult_class.tt

package Paws::Inspector::DescribeExclusionsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Inspector::Types qw/Inspector_FailedItems Inspector_ExclusionMap/;
  has Exclusions => (is => 'ro', isa => Inspector_ExclusionMap, required => 1);
  has FailedItems => (is => 'ro', isa => Inspector_FailedItems, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FailedItems' => {
                                  'type' => 'Inspector_FailedItems',
                                  'class' => 'Paws::Inspector::FailedItems'
                                },
               'Exclusions' => {
                                 'class' => 'Paws::Inspector::ExclusionMap',
                                 'type' => 'Inspector_ExclusionMap'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Exclusions' => 1,
                    'FailedItems' => 1
                  },
  'NameInRequest' => {
                       'Exclusions' => 'exclusions',
                       'FailedItems' => 'failedItems'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeExclusionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Exclusions => Inspector_ExclusionMap

Information about the exclusions.


=head2 B<REQUIRED> FailedItems => Inspector_FailedItems

Exclusion details that cannot be described. An error code is provided
for each failed item.


=head2 _request_id => Str


=cut

1;