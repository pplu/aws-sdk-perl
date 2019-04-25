
package Paws::Cloud9::ListEnvironments;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEnvironments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Cloud9::ListEnvironmentsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::ListEnvironments - Arguments for method ListEnvironments on L<Paws::Cloud9>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEnvironments on the
L<AWS Cloud9|Paws::Cloud9> service. Use the attributes of this class
as arguments to method ListEnvironments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEnvironments.

=head1 SYNOPSIS

    my $cloud9 = Paws->service('Cloud9');
    my $ListEnvironmentsResult = $cloud9->ListEnvironments(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $EnvironmentIds = $ListEnvironmentsResult->EnvironmentIds;
    my $NextToken      = $ListEnvironmentsResult->NextToken;

    # Returns a L<Paws::Cloud9::ListEnvironmentsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloud9/ListEnvironments>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of environments to get identifiers for.



=head2 NextToken => Str

During a previous call, if there are more than 25 items in the list,
only the first 25 items are returned, along with a unique string called
a I<next token>. To get the next batch of items in the list, call this
operation again, adding the next token to the call. To get all of the
items in the list, keep calling this operation with each subsequent
next token that is returned, until no more next tokens are returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEnvironments in L<Paws::Cloud9>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

