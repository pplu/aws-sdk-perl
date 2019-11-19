# Generated from callresult_class.tt

package Paws::SDB::ListDomainsResult;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::SDB::Types qw//;
  has DomainNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'DomainNames' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DomainNames' => 'DomainName'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SDB::ListDomainsResult

=head1 ATTRIBUTES


=head2 DomainNames => ArrayRef[Str|Undef]

A list of domain names that match the expression.


=head2 NextToken => Str

An opaque token indicating that there are more domains than the
specified C<MaxNumberOfDomains> still available.


=head2 _request_id => Str


=cut

