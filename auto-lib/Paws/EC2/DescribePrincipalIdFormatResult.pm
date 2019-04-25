
package Paws::EC2::DescribePrincipalIdFormatResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has Principals => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PrincipalIdFormat]', request_name => 'principalSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribePrincipalIdFormatResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 Principals => ArrayRef[L<Paws::EC2::PrincipalIdFormat>]

Information about the ID format settings for the ARN.


=head2 _request_id => Str


=cut

