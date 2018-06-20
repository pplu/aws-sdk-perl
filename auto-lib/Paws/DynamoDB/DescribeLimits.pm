
package Paws::DynamoDB::DescribeLimits;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLimits');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::DescribeLimitsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeLimits - Arguments for method DescribeLimits on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLimits on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method DescribeLimits.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLimits.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
 # To determine capacity limits per table and account, in the current AWS region
 # The following example returns the maximum read and write capacity units per
 # table, and for the AWS account, in the current AWS region.
    my $DescribeLimitsOutput = $dynamodb->DescribeLimits();

    # Results:
    my $AccountMaxReadCapacityUnits =
      $DescribeLimitsOutput->AccountMaxReadCapacityUnits;
    my $AccountMaxWriteCapacityUnits =
      $DescribeLimitsOutput->AccountMaxWriteCapacityUnits;
    my $TableMaxReadCapacityUnits =
      $DescribeLimitsOutput->TableMaxReadCapacityUnits;
    my $TableMaxWriteCapacityUnits =
      $DescribeLimitsOutput->TableMaxWriteCapacityUnits;

    # Returns a L<Paws::DynamoDB::DescribeLimitsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/DescribeLimits>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLimits in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

