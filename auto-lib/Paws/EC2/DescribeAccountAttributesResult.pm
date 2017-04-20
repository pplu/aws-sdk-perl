
package Paws::EC2::DescribeAccountAttributesResult;
  use Moose;
  has AccountAttributes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AccountAttribute]', request_name => 'accountAttributeSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeAccountAttributesResult

=head1 ATTRIBUTES


=head2 AccountAttributes => ArrayRef[L<Paws::EC2::AccountAttribute>]

Information about one or more account attributes.


=head2 _request_id => Str


=cut

