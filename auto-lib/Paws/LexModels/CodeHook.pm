package Paws::LexModels::CodeHook;
  use Moose;
  has MessageVersion => (is => 'ro', isa => 'Str', request_name => 'messageVersion', traits => ['NameInRequest'], required => 1);
  has Uri => (is => 'ro', isa => 'Str', request_name => 'uri', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::CodeHook

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::CodeHook object:

  $service_obj->Method(Att1 => { MessageVersion => $value, ..., Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::CodeHook object:

  $result = $service_obj->Method(...);
  $result->Att1->MessageVersion

=head1 DESCRIPTION

Specifies a Lambda function that verifies requests to a bot or fulfills
the user's request to a bot..

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageVersion => Str

  The version of the request-response that you want Amazon Lex to use to
invoke your Lambda function. For more information, see using-lambda.


=head2 B<REQUIRED> Uri => Str

  The Amazon Resource Name (ARN) of the Lambda function.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

