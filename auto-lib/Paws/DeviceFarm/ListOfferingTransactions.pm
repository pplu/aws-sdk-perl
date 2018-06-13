
package Paws::DeviceFarm::ListOfferingTransactions;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOfferingTransactions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::ListOfferingTransactionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListOfferingTransactions - Arguments for method ListOfferingTransactions on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOfferingTransactions on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method ListOfferingTransactions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOfferingTransactions.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    # To get information about device offering transactions
    # The following example returns information about Device Farm offering
    # transactions.
    my $ListOfferingTransactionsResult = $devicefarm->ListOfferingTransactions(
      {
        'NextToken' =>
          'RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE='
      }
    );

    # Results:
    my $offeringTransactions =
      $ListOfferingTransactionsResult->offeringTransactions;

    # Returns a L<Paws::DeviceFarm::ListOfferingTransactionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/ListOfferingTransactions>

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOfferingTransactions in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

