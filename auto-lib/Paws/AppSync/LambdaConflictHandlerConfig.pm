package Paws::AppSync::LambdaConflictHandlerConfig;
  use Moose;
  has LambdaConflictHandlerArn => (is => 'ro', isa => 'Str', request_name => 'lambdaConflictHandlerArn', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::LambdaConflictHandlerConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::LambdaConflictHandlerConfig object:

  $service_obj->Method(Att1 => { LambdaConflictHandlerArn => $value, ..., LambdaConflictHandlerArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::LambdaConflictHandlerConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->LambdaConflictHandlerArn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 LambdaConflictHandlerArn => Str

  The Arn for the Lambda function to use as the Conflict Handler.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

