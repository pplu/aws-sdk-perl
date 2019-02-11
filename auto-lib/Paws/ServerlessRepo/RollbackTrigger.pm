package Paws::ServerlessRepo::RollbackTrigger;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::RollbackTrigger

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::RollbackTrigger object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::RollbackTrigger object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

This property corresponds to the I<AWS CloudFormation RollbackTrigger
(https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger)>
Data Type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  This property corresponds to the content of the same name for the I<AWS
CloudFormation RollbackTrigger
(https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger)>
Data Type.


=head2 B<REQUIRED> Type => Str

  This property corresponds to the content of the same name for the I<AWS
CloudFormation RollbackTrigger
(https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger)>
Data Type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

