
package Paws::CloudFormation::ListImports;
  use Moose;
  has ExportName => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListImports');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ListImportsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListImportsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListImports - Arguments for method ListImports on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListImports on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ListImports.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListImports.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ListImportsOutput = $cloudformation->ListImports(
      ExportName => 'MyExportName',
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Imports   = $ListImportsOutput->Imports;
    my $NextToken = $ListImportsOutput->NextToken;

    # Returns a L<Paws::CloudFormation::ListImportsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ListImports>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportName => Str

The name of the exported output value. AWS CloudFormation returns the
stack names that are importing this value.



=head2 NextToken => Str

A string (provided by the ListImports response output) that identifies
the next page of stacks that are importing the specified exported
output value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListImports in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

