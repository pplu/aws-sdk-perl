
package Paws::CloudFormation::ListChangeSets;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListChangeSets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ListChangeSetsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListChangeSetsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListChangeSets - Arguments for method ListChangeSets on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListChangeSets on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ListChangeSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListChangeSets.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ListChangeSetsOutput = $cloudformation->ListChangeSets(
      StackName => 'MyStackNameOrId',
      NextToken => 'MyNextToken',       # OPTIONAL
    );

    # Results:
    my $NextToken = $ListChangeSetsOutput->NextToken;
    my $Summaries = $ListChangeSetsOutput->Summaries;

    # Returns a L<Paws::CloudFormation::ListChangeSetsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ListChangeSets>

=head1 ATTRIBUTES


=head2 NextToken => Str

A string (provided by the ListChangeSets response output) that
identifies the next page of change sets that you want to retrieve.



=head2 B<REQUIRED> StackName => Str

The name or the Amazon Resource Name (ARN) of the stack for which you
want to list change sets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListChangeSets in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

