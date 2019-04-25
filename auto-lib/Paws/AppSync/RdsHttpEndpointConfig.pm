package Paws::AppSync::RdsHttpEndpointConfig;
  use Moose;
  has AwsRegion => (is => 'ro', isa => 'Str', request_name => 'awsRegion', traits => ['NameInRequest']);
  has AwsSecretStoreArn => (is => 'ro', isa => 'Str', request_name => 'awsSecretStoreArn', traits => ['NameInRequest']);
  has DatabaseName => (is => 'ro', isa => 'Str', request_name => 'databaseName', traits => ['NameInRequest']);
  has DbClusterIdentifier => (is => 'ro', isa => 'Str', request_name => 'dbClusterIdentifier', traits => ['NameInRequest']);
  has Schema => (is => 'ro', isa => 'Str', request_name => 'schema', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::RdsHttpEndpointConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::RdsHttpEndpointConfig object:

  $service_obj->Method(Att1 => { AwsRegion => $value, ..., Schema => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::RdsHttpEndpointConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsRegion

=head1 DESCRIPTION

The Amazon RDS HTTP endpoint configuration.

=head1 ATTRIBUTES


=head2 AwsRegion => Str

  AWS Region for RDS HTTP endpoint.


=head2 AwsSecretStoreArn => Str

  AWS secret store ARN for database credentials.


=head2 DatabaseName => Str

  Logical database name.


=head2 DbClusterIdentifier => Str

  Amazon RDS cluster identifier.


=head2 Schema => Str

  Logical schema name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

