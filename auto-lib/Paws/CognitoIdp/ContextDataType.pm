package Paws::CognitoIdp::ContextDataType;
  use Moose;
  has EncodedData => (is => 'ro', isa => 'Str');
  has HttpHeaders => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::HttpHeader]', required => 1);
  has IpAddress => (is => 'ro', isa => 'Str', required => 1);
  has ServerName => (is => 'ro', isa => 'Str', required => 1);
  has ServerPath => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ContextDataType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::ContextDataType object:

  $service_obj->Method(Att1 => { EncodedData => $value, ..., ServerPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::ContextDataType object:

  $result = $service_obj->Method(...);
  $result->Att1->EncodedData

=head1 DESCRIPTION

Contextual user data type used for evaluating the risk of an unexpected
event by Amazon Cognito advanced security.

=head1 ATTRIBUTES


=head2 EncodedData => Str

  Encoded data containing device fingerprinting details, collected using
the Amazon Cognito context data collection library.


=head2 B<REQUIRED> HttpHeaders => ArrayRef[L<Paws::CognitoIdp::HttpHeader>]

  HttpHeaders received on your server in same order.


=head2 B<REQUIRED> IpAddress => Str

  Source IP address of your user.


=head2 B<REQUIRED> ServerName => Str

  Your server endpoint where this API is invoked.


=head2 B<REQUIRED> ServerPath => Str

  Your server path where this API is invoked.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

