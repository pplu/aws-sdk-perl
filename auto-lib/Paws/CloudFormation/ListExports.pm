
package Paws::CloudFormation::ListExports;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListExports');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ListExportsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListExportsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListExports - Arguments for method ListExports on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListExports on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ListExports.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListExports.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ListExportsOutput = $cloudformation->ListExports(
      NextToken => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Exports   = $ListExportsOutput->Exports;
    my $NextToken = $ListExportsOutput->NextToken;

    # Returns a L<Paws::CloudFormation::ListExportsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ListExports>

=head1 ATTRIBUTES


=head2 NextToken => Str

A string (provided by the ListExports response output) that identifies
the next page of exported output values that you asked to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListExports in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

