
package Paws::RedShift::AccountAttributeList;
  use Moose;
  has AccountAttributes => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::AccountAttribute]', request_name => 'AccountAttribute', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::AccountAttributeList

=head1 ATTRIBUTES


=head2 AccountAttributes => ArrayRef[L<Paws::RedShift::AccountAttribute>]

A list of attributes assigned to an account.


=head2 _request_id => Str


=cut

