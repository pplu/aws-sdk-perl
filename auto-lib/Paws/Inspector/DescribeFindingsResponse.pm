# Generated from json/callresult_class.tt

package Paws::Inspector::DescribeFindingsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Inspector::Types qw/Inspector_FailedItems Inspector_Finding/;
  has FailedItems => (is => 'ro', isa => Inspector_FailedItems, required => 1);
  has Findings => (is => 'ro', isa => ArrayRef[Inspector_Finding], required => 1);

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
               'Findings' => {
                               'class' => 'Paws::Inspector::Finding',
                               'type' => 'ArrayRef[Inspector_Finding]'
                             }
             },
  'NameInRequest' => {
                       'FailedItems' => 'failedItems',
                       'Findings' => 'findings'
                     },
  'IsRequired' => {
                    'FailedItems' => 1,
                    'Findings' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailedItems => Inspector_FailedItems

Finding details that cannot be described. An error code is provided for
each failed item.


=head2 B<REQUIRED> Findings => ArrayRef[Inspector_Finding]

Information about the finding.


=head2 _request_id => Str


=cut

1;