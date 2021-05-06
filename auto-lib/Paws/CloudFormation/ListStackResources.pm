
package Paws::CloudFormation::ListStackResources;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStackResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ListStackResourcesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListStackResourcesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListStackResources - Arguments for method ListStackResources on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStackResources on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ListStackResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStackResources.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ListStackResourcesOutput = $cloudformation->ListStackResources(
      StackName => 'MyStackName',
      NextToken => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListStackResourcesOutput->NextToken;
    my $StackResourceSummaries =
      $ListStackResourcesOutput->StackResourceSummaries;

    # Returns a L<Paws::CloudFormation::ListStackResourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ListStackResources>

=head1 ATTRIBUTES


=head2 NextToken => Str

A string that identifies the next page of stack resources that you want
to retrieve.



=head2 B<REQUIRED> StackName => Str

The name or the unique stack ID that is associated with the stack,
which are not always interchangeable:

=over

=item *

Running stacks: You can specify either the stack's name or its unique
stack ID.

=item *

Deleted stacks: You must specify the unique stack ID.

=back

Default: There is no default value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStackResources in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

