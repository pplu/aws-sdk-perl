package Paws::AppSync::DynamodbDataSourceConfig;
  use Moose;
  has AwsRegion => (is => 'ro', isa => 'Str', request_name => 'awsRegion', traits => ['NameInRequest'], required => 1);
  has TableName => (is => 'ro', isa => 'Str', request_name => 'tableName', traits => ['NameInRequest'], required => 1);
  has UseCallerCredentials => (is => 'ro', isa => 'Bool', request_name => 'useCallerCredentials', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::DynamodbDataSourceConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::DynamodbDataSourceConfig object:

  $service_obj->Method(Att1 => { AwsRegion => $value, ..., UseCallerCredentials => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::DynamodbDataSourceConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsRegion

=head1 DESCRIPTION

Describes an Amazon DynamoDB data source configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsRegion => Str

  The AWS Region.


=head2 B<REQUIRED> TableName => Str

  The table name.


=head2 UseCallerCredentials => Bool

  Set to TRUE to use Amazon Cognito credentials with this data source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

