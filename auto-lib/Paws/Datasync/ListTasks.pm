
package Paws::Datasync::ListTasks;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::ListTasksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::ListTasks - Arguments for method ListTasks on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTasks on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method ListTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTasks.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $ListTasksResponse = $datasync->ListTasks(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTasksResponse->NextToken;
    my $Tasks     = $ListTasksResponse->Tasks;

    # Returns a L<Paws::Datasync::ListTasksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/ListTasks>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of tasks to return.



=head2 NextToken => Str

An opaque string that indicates the position at which to begin the next
list of tasks.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTasks in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

