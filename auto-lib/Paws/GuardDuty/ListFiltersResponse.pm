
package Paws::GuardDuty::ListFiltersResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::GuardDuty::Types qw//;
  has FilterNames => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'FilterNames' => 'filterNames',
                       'NextToken' => 'nextToken'
                     },
  'IsRequired' => {
                    'FilterNames' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FilterNames' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'NextToken' => {
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

Paws::GuardDuty::ListFiltersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FilterNames => ArrayRef[Str|Undef]

A list of filter names


=head2 NextToken => Str

Pagination parameter to be used on the next list operation to retrieve
more items.


=head2 _request_id => Str


=cut

