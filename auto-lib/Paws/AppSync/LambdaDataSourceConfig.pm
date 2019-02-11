package Paws::AppSync::LambdaDataSourceConfig;
  use Moose;
  has LambdaFunctionArn => (is => 'ro', isa => 'Str', request_name => 'lambdaFunctionArn', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::LambdaDataSourceConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::LambdaDataSourceConfig object:

  $service_obj->Method(Att1 => { LambdaFunctionArn => $value, ..., LambdaFunctionArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::LambdaDataSourceConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->LambdaFunctionArn

=head1 DESCRIPTION

Describes an AWS Lambda data source configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LambdaFunctionArn => Str

  The ARN for the Lambda function.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

