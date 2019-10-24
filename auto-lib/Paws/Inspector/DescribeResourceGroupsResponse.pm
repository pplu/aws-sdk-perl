# Generated from json/callresult_class.tt

package Paws::Inspector::DescribeResourceGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Inspector::Types qw/Inspector_ResourceGroup Inspector_FailedItems/;
  has FailedItems => (is => 'ro', isa => Inspector_FailedItems, required => 1);
  has ResourceGroups => (is => 'ro', isa => ArrayRef[Inspector_ResourceGroup], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailedItems' => {
                                  'class' => 'Paws::Inspector::FailedItems',
                                  'type' => 'Inspector_FailedItems'
                                },
               'ResourceGroups' => {
                                     'class' => 'Paws::Inspector::ResourceGroup',
                                     'type' => 'ArrayRef[Inspector_ResourceGroup]'
                                   }
             },
  'NameInRequest' => {
                       'FailedItems' => 'failedItems',
                       'ResourceGroups' => 'resourceGroups'
                     },
  'IsRequired' => {
                    'FailedItems' => 1,
                    'ResourceGroups' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeResourceGroupsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailedItems => Inspector_FailedItems

Resource group details that cannot be described. An error code is
provided for each failed item.


=head2 B<REQUIRED> ResourceGroups => ArrayRef[Inspector_ResourceGroup]

Information about a resource group.


=head2 _request_id => Str


=cut

1;