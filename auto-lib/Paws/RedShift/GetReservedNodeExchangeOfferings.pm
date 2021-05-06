
package Paws::RedShift::GetReservedNodeExchangeOfferings;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ReservedNodeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReservedNodeExchangeOfferings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::GetReservedNodeExchangeOfferingsOutputMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetReservedNodeExchangeOfferingsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::GetReservedNodeExchangeOfferings - Arguments for method GetReservedNodeExchangeOfferings on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReservedNodeExchangeOfferings on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method GetReservedNodeExchangeOfferings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReservedNodeExchangeOfferings.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $GetReservedNodeExchangeOfferingsOutputMessage =
      $redshift->GetReservedNodeExchangeOfferings(
      ReservedNodeId => 'MyString',
      Marker         => 'MyString',    # OPTIONAL
      MaxRecords     => 1,             # OPTIONAL
      );

    # Results:
    my $Marker = $GetReservedNodeExchangeOfferingsOutputMessage->Marker;
    my $ReservedNodeOfferings =
      $GetReservedNodeExchangeOfferingsOutputMessage->ReservedNodeOfferings;

# Returns a L<Paws::RedShift::GetReservedNodeExchangeOfferingsOutputMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/GetReservedNodeExchangeOfferings>

=head1 ATTRIBUTES


=head2 Marker => Str

A value that indicates the starting point for the next set of
ReservedNodeOfferings.



=head2 MaxRecords => Int

An integer setting the maximum number of ReservedNodeOfferings to
retrieve.



=head2 B<REQUIRED> ReservedNodeId => Str

A string representing the node identifier for the DC1 Reserved Node to
be exchanged.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReservedNodeExchangeOfferings in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

