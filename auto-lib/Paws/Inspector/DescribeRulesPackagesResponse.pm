# Generated from json/callresult_class.tt

package Paws::Inspector::DescribeRulesPackagesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Inspector::Types qw/Inspector_FailedItems Inspector_RulesPackage/;
  has FailedItems => (is => 'ro', isa => Inspector_FailedItems, required => 1);
  has RulesPackages => (is => 'ro', isa => ArrayRef[Inspector_RulesPackage], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RulesPackages' => {
                                    'class' => 'Paws::Inspector::RulesPackage',
                                    'type' => 'ArrayRef[Inspector_RulesPackage]'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailedItems' => {
                                  'class' => 'Paws::Inspector::FailedItems',
                                  'type' => 'Inspector_FailedItems'
                                }
             },
  'NameInRequest' => {
                       'RulesPackages' => 'rulesPackages',
                       'FailedItems' => 'failedItems'
                     },
  'IsRequired' => {
                    'RulesPackages' => 1,
                    'FailedItems' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeRulesPackagesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailedItems => Inspector_FailedItems

Rules package details that cannot be described. An error code is
provided for each failed item.


=head2 B<REQUIRED> RulesPackages => ArrayRef[Inspector_RulesPackage]

Information about the rules package.


=head2 _request_id => Str


=cut

1;