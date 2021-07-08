
package Paws::DynamoDB::ListExports;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TableArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListExports');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::ListExportsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ListExports - Arguments for method ListExports on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListExports on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method ListExports.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListExports.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $ListExportsOutput = $dynamodb->ListExports(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyExportNextToken',    # OPTIONAL
      TableArn   => 'MyTableArn',           # OPTIONAL
    );

    # Results:
    my $ExportSummaries = $ListExportsOutput->ExportSummaries;
    my $NextToken       = $ListExportsOutput->NextToken;

    # Returns a L<Paws::DynamoDB::ListExportsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/ListExports>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of results to return per page.



=head2 NextToken => Str

An optional string that, if supplied, must be copied from the output of
a previous call to C<ListExports>. When provided in this manner, the
API fetches the next page of results.



=head2 TableArn => Str

The Amazon Resource Name (ARN) associated with the exported table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListExports in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

