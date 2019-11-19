
package Paws::EC2::DescribePrincipalIdFormatResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_PrincipalIdFormat/;
  has NextToken => (is => 'ro', isa => Str);
  has Principals => (is => 'ro', isa => ArrayRef[EC2_PrincipalIdFormat]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Principals' => 'principalSet',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Principals' => {
                                 'type' => 'ArrayRef[EC2_PrincipalIdFormat]',
                                 'class' => 'Paws::EC2::PrincipalIdFormat'
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

Paws::EC2::DescribePrincipalIdFormatResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 Principals => ArrayRef[EC2_PrincipalIdFormat]

Information about the ID format settings for the ARN.


=head2 _request_id => Str


=cut

