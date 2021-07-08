
package Paws::Proton::ListEnvironmentAccountConnections;
  use Moose;
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentName' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RequestedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestedBy' , required => 1);
  has Statuses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'statuses' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEnvironmentAccountConnections');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::ListEnvironmentAccountConnectionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListEnvironmentAccountConnections - Arguments for method ListEnvironmentAccountConnections on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEnvironmentAccountConnections on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method ListEnvironmentAccountConnections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEnvironmentAccountConnections.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $ListEnvironmentAccountConnectionsOutput =
      $proton->ListEnvironmentAccountConnections(
      RequestedBy     => 'MANAGEMENT_ACCOUNT',
      EnvironmentName => 'MyResourceName',       # OPTIONAL
      MaxResults      => 1,                      # OPTIONAL
      NextToken       => 'MyNextToken',          # OPTIONAL
      Statuses        => [
        'PENDING', ...    # values: PENDING, CONNECTED, REJECTED
      ],    # OPTIONAL
      );

    # Results:
    my $EnvironmentAccountConnections =
      $ListEnvironmentAccountConnectionsOutput->EnvironmentAccountConnections;
    my $NextToken = $ListEnvironmentAccountConnectionsOutput->NextToken;

    # Returns a L<Paws::Proton::ListEnvironmentAccountConnectionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/ListEnvironmentAccountConnections>

=head1 ATTRIBUTES


=head2 EnvironmentName => Str

The environment name that's associated with each listed environment
account connection.



=head2 MaxResults => Int

The maximum number of environment account connections to list.



=head2 NextToken => Str

A token to indicate the location of the next environment account
connection in the array of environment account connections, after the
list of environment account connections that was previously requested.



=head2 B<REQUIRED> RequestedBy => Str

The type of account making the C<ListEnvironmentAccountConnections>
request.

Valid values are: C<"MANAGEMENT_ACCOUNT">, C<"ENVIRONMENT_ACCOUNT">

=head2 Statuses => ArrayRef[Str|Undef]

The status details for each listed environment account connection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEnvironmentAccountConnections in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

