
package Paws::Braket::SearchQuantumTasks;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Braket::SearchQuantumTasksFilter]', traits => ['NameInRequest'], request_name => 'filters', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchQuantumTasks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/quantum-tasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Braket::SearchQuantumTasksResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::SearchQuantumTasks - Arguments for method SearchQuantumTasks on L<Paws::Braket>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchQuantumTasks on the
L<Braket|Paws::Braket> service. Use the attributes of this class
as arguments to method SearchQuantumTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchQuantumTasks.

=head1 SYNOPSIS

    my $braket = Paws->service('Braket');
    my $SearchQuantumTasksResponse = $braket->SearchQuantumTasks(
      Filters => [
        {
          Name     => 'MyString64',   # min: 1, max: 64
          Operator => 'LT',           # values: LT, LTE, EQUAL, GT, GTE, BETWEEN
          Values   => [
            'MyString256', ...        # min: 1, max: 256
          ],    # min: 1, max: 10

        },
        ...
      ],
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $SearchQuantumTasksResponse->NextToken;
    my $QuantumTasks = $SearchQuantumTasksResponse->QuantumTasks;

    # Returns a L<Paws::Braket::SearchQuantumTasksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/braket/SearchQuantumTasks>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Filters => ArrayRef[L<Paws::Braket::SearchQuantumTasksFilter>]

Array of C<SearchQuantumTasksFilter> objects.



=head2 MaxResults => Int

Maximum number of results to return in the response.



=head2 NextToken => Str

A token used for pagination of results returned in the response. Use
the token returned from the previous request continue results where the
previous request ended.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchQuantumTasks in L<Paws::Braket>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

