
package Paws::ECR::PutReplicationConfiguration;
  use Moose;
  has ReplicationConfiguration => (is => 'ro', isa => 'Paws::ECR::ReplicationConfiguration', traits => ['NameInRequest'], request_name => 'replicationConfiguration' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutReplicationConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::PutReplicationConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::PutReplicationConfiguration - Arguments for method PutReplicationConfiguration on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutReplicationConfiguration on the
L<Amazon EC2 Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method PutReplicationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutReplicationConfiguration.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $PutReplicationConfigurationResponse =
      $api . ecr->PutReplicationConfiguration(
      ReplicationConfiguration => {
        Rules => [
          {
            Destinations => [
              {
                Region     => 'MyRegion',       # min: 2, max: 25
                RegistryId => 'MyRegistryId',

              },
              ...
            ],                                  # max: 25

          },
          ...
        ],                                      # max: 1

      },

      );

    # Results:
    my $ReplicationConfiguration =
      $PutReplicationConfigurationResponse->ReplicationConfiguration;

    # Returns a L<Paws::ECR::PutReplicationConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/PutReplicationConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReplicationConfiguration => L<Paws::ECR::ReplicationConfiguration>

An object representing the replication configuration for a registry.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutReplicationConfiguration in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

