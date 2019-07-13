
package Paws::Datasync::ListTaskExecutions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TaskArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTaskExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::ListTaskExecutionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::ListTaskExecutions - Arguments for method ListTaskExecutions on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTaskExecutions on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method ListTaskExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTaskExecutions.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $ListTaskExecutionsResponse = $datasync->ListTaskExecutions(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      TaskArn    => 'MyTaskArn',      # OPTIONAL
    );

    # Results:
    my $NextToken      = $ListTaskExecutionsResponse->NextToken;
    my $TaskExecutions = $ListTaskExecutionsResponse->TaskExecutions;

    # Returns a L<Paws::Datasync::ListTaskExecutionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/ListTaskExecutions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of executed tasks to list.



=head2 NextToken => Str

An opaque string that indicates the position at which to begin the next
list of the executed tasks.



=head2 TaskArn => Str

The Amazon Resource Name (ARN) of the task whose tasks you want to
list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTaskExecutions in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

