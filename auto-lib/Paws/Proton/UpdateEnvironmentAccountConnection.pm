
package Paws::Proton::UpdateEnvironmentAccountConnection;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironmentAccountConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::UpdateEnvironmentAccountConnectionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::UpdateEnvironmentAccountConnection - Arguments for method UpdateEnvironmentAccountConnection on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEnvironmentAccountConnection on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method UpdateEnvironmentAccountConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEnvironmentAccountConnection.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $UpdateEnvironmentAccountConnectionOutput =
      $proton->UpdateEnvironmentAccountConnection(
      Id      => 'MyEnvironmentAccountConnectionId',
      RoleArn => 'MyArn',

      );

    # Results:
    my $EnvironmentAccountConnection =
      $UpdateEnvironmentAccountConnectionOutput->EnvironmentAccountConnection;

   # Returns a L<Paws::Proton::UpdateEnvironmentAccountConnectionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/UpdateEnvironmentAccountConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the environment account connection to update.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM service role that is
associated with the environment account connection to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEnvironmentAccountConnection in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

