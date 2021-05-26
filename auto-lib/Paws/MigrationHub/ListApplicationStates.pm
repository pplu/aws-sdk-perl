
package Paws::MigrationHub::ListApplicationStates;
  use Moose;
  has ApplicationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplicationStates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHub::ListApplicationStatesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::ListApplicationStates - Arguments for method ListApplicationStates on L<Paws::MigrationHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplicationStates on the
L<AWS Migration Hub|Paws::MigrationHub> service. Use the attributes of this class
as arguments to method ListApplicationStates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplicationStates.

=head1 SYNOPSIS

    my $mgh = Paws->service('MigrationHub');
    my $ListApplicationStatesResult = $mgh->ListApplicationStates(
      ApplicationIds => [
        'MyApplicationId', ...    # min: 1, max: 1600
      ],                          # OPTIONAL
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $ApplicationStateList =
      $ListApplicationStatesResult->ApplicationStateList;
    my $NextToken = $ListApplicationStatesResult->NextToken;

    # Returns a L<Paws::MigrationHub::ListApplicationStatesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgh/ListApplicationStates>

=head1 ATTRIBUTES


=head2 ApplicationIds => ArrayRef[Str|Undef]

The configurationIds from the Application Discovery Service that
uniquely identifies your applications.



=head2 MaxResults => Int

Maximum number of results to be returned per page.



=head2 NextToken => Str

If a C<NextToken> was returned by a previous call, there are more
results available. To retrieve the next page of results, make the call
again using the returned token in C<NextToken>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplicationStates in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

