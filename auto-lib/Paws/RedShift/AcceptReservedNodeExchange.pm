
package Paws::RedShift::AcceptReservedNodeExchange;
  use Moose;
  has ReservedNodeId => (is => 'ro', isa => 'Str', required => 1);
  has TargetReservedNodeOfferingId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptReservedNodeExchange');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::AcceptReservedNodeExchangeOutputMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AcceptReservedNodeExchangeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::AcceptReservedNodeExchange - Arguments for method AcceptReservedNodeExchange on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptReservedNodeExchange on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method AcceptReservedNodeExchange.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptReservedNodeExchange.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $AcceptReservedNodeExchangeOutputMessage =
      $redshift->AcceptReservedNodeExchange(
      ReservedNodeId               => 'MyString',
      TargetReservedNodeOfferingId => 'MyString',

      );

    # Results:
    my $ExchangedReservedNode =
      $AcceptReservedNodeExchangeOutputMessage->ExchangedReservedNode;

  # Returns a L<Paws::RedShift::AcceptReservedNodeExchangeOutputMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/AcceptReservedNodeExchange>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReservedNodeId => Str

A string representing the node identifier of the DC1 Reserved Node to
be exchanged.



=head2 B<REQUIRED> TargetReservedNodeOfferingId => Str

The unique identifier of the DC2 Reserved Node offering to be used for
the exchange. You can obtain the value for the parameter by calling
GetReservedNodeExchangeOfferings




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptReservedNodeExchange in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

