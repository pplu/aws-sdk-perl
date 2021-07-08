
package Paws::AppRunner::DeleteConnection;
  use Moose;
  has ConnectionArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppRunner::DeleteConnectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::DeleteConnection - Arguments for method DeleteConnection on L<Paws::AppRunner>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConnection on the
L<AWS App Runner|Paws::AppRunner> service. Use the attributes of this class
as arguments to method DeleteConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConnection.

=head1 SYNOPSIS

    my $apprunner = Paws->service('AppRunner');
    my $DeleteConnectionResponse = $apprunner->DeleteConnection(
      ConnectionArn => 'MyAppRunnerResourceArn',

    );

    # Results:
    my $Connection = $DeleteConnectionResponse->Connection;

    # Returns a L<Paws::AppRunner::DeleteConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apprunner/DeleteConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionArn => Str

The Amazon Resource Name (ARN) of the App Runner connection that you
want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConnection in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

