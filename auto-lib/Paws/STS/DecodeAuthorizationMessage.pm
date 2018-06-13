
package Paws::STS::DecodeAuthorizationMessage;
  use Moose;
  has EncodedMessage => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DecodeAuthorizationMessage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::STS::DecodeAuthorizationMessageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DecodeAuthorizationMessageResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::DecodeAuthorizationMessage - Arguments for method DecodeAuthorizationMessage on L<Paws::STS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DecodeAuthorizationMessage on the
L<AWS Security Token Service|Paws::STS> service. Use the attributes of this class
as arguments to method DecodeAuthorizationMessage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DecodeAuthorizationMessage.

=head1 SYNOPSIS

    my $sts = Paws->service('STS');
    # To decode information about an authorization status of a request
    my $DecodeAuthorizationMessageResponse = $sts->DecodeAuthorizationMessage(
      {
        'EncodedMessage' => '<encoded-message>'
      }
    );

    # Results:
    my $DecodedMessage = $DecodeAuthorizationMessageResponse->DecodedMessage;

    # Returns a L<Paws::STS::DecodeAuthorizationMessageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sts/DecodeAuthorizationMessage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncodedMessage => Str

The encoded message that was returned with the response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DecodeAuthorizationMessage in L<Paws::STS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

