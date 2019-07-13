
package Paws::MTurk::SendBonus;
  use Moose;
  has AssignmentId => (is => 'ro', isa => 'Str', required => 1);
  has BonusAmount => (is => 'ro', isa => 'Str', required => 1);
  has Reason => (is => 'ro', isa => 'Str', required => 1);
  has UniqueRequestToken => (is => 'ro', isa => 'Str');
  has WorkerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendBonus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::SendBonusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::SendBonus - Arguments for method SendBonus on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendBonus on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method SendBonus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendBonus.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $SendBonusResponse = $mturk -requester->SendBonus(
      AssignmentId       => 'MyEntityId',
      BonusAmount        => 'MyCurrencyAmount',
      Reason             => 'MyString',
      WorkerId           => 'MyCustomerId',
      UniqueRequestToken => 'MyIdempotencyToken',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/SendBonus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssignmentId => Str

The ID of the assignment for which this bonus is paid.



=head2 B<REQUIRED> BonusAmount => Str

The Bonus amount is a US Dollar amount specified using a string (for
example, "5" represents $5.00 USD and "101.42" represents $101.42 USD).
Do not include currency symbols or currency codes.



=head2 B<REQUIRED> Reason => Str

A message that explains the reason for the bonus payment. The Worker
receiving the bonus can see this message.



=head2 UniqueRequestToken => Str

A unique identifier for this request, which allows you to retry the
call on error without granting multiple bonuses. This is useful in
cases such as network timeouts where it is unclear whether or not the
call succeeded on the server. If the bonus already exists in the system
from a previous call using the same UniqueRequestToken, subsequent
calls will return an error with a message containing the request ID.



=head2 B<REQUIRED> WorkerId => Str

The ID of the Worker being paid the bonus.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendBonus in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

